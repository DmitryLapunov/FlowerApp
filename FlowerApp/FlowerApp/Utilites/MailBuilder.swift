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
        smtpSession.username = "Tumarev1c@yandex.ru"
        smtpSession.password = "jqmuoigymuxpoakm"
        smtpSession.connectionType = .TLS
        smtpSession.authType = .saslPlain
        return smtpSession
    }
    
    func sendOrderToOperator(order: Order) {
        guard let address = MCOAddress(displayName: "Dmitro", mailbox: "diamondtheonly@gmail.com") else { return }
        
        let builder = MCOMessageBuilder()
        builder.header.to = [address]
        builder.header.from = MCOAddress(displayName: "Vgosti.by", mailbox: "Tumarev1c@yandex.ru")
        builder.header.subject = "Заказ от пользователя"
        
        var bodyStr = """
                <p>Заказчик: \(order.user.name)<p>
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
        
        builder.htmlBody = bodyStr
        
        let rfc822Data = builder.data()
        let sendOperation = smtpSession.sendOperation(with: rfc822Data)
        
        sendOperation?.start({ error in
            if let error = error { print(error) }
        })
    }
}
