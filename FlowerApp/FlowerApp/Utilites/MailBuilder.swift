//
//  MailBuilder.swift
//  FlowerApp
//
//  Created by Illia Romanenko on 12.12.21.
//

import Foundation

class MailBuilder {
    private var smtpSession: MCOSMTPSession {
        let smtpSession = MCOSMTPSession()
        smtpSession.hostname = "smtp.yandex.ru"
        smtpSession.port = 465
        smtpSession.username = "vgostiby.bot@yandex.by"
        smtpSession.password = "llhdzekqgobvprzu"
        smtpSession.connectionType = .TLS
        smtpSession.authType = .saslPlain
        return smtpSession
    }
    
    func sendOrderToOperator(order: Order) {
        #if DEBUG
        guard let address = MCOAddress(displayName: "Operator", mailbox: "zamok.tech@gmail.com") else { return }
        #else
        guard let address = MCOAddress(displayName: "Operator", mailbox: "vgosti.by@yandex.ru") else { return }
        #endif
        
        guard let client = MCOAddress(displayName: order.user.name, mailbox: order.user.email) else { return }
        
        let builder = MCOMessageBuilder()
        builder.header.to = [address, client]
        builder.header.from = MCOAddress(displayName: "Vgosti.by bot", mailbox: "vgostiby.bot@yandex.by")
        builder.header.subject = "Заказ пользователя \(order.user.name)"
        
        var bodyStr = """
                <p>Заказчик: \(order.user.name)<p>
                <p>Тип доставки: \(order.user.delivery.name)</p>
                <p>Доставка: \(order.user.address).<p>
                <p>Телефон: \(order.user.phone)</p>
                <p>__________________________<p>
                """
        
        for item in order.products {
            let productString = """
                                <p>Товар: \(item.productName)<p>
                                <p>Количество: \(item.count)<p>
                                <p>Стоимость единицы: \(item.productCost)<p>
                                <p>__________________________<p>
                                """
            bodyStr.append(productString)
        }
        
        bodyStr.append("<h3>Итого: \(order.totalCost) byn</h3>")
        bodyStr.append("Письмо выслано автоматически, пожалуйста, не отвечаейте на него.")
        
        
        
        builder.htmlBody = bodyStr
        
        let rfc822Data = builder.data()
        let sendOperation = smtpSession.sendOperation(with: rfc822Data)
        
        sendOperation?.start({ error in
            if let error = error { print(error) }
        })
    }
}
