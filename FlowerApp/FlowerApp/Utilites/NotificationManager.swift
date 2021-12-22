//
//  NotificationManager.swift
//  FlowerApp
//
//  Created by Illia Romanenko on 7.12.21.
//

import Foundation
import UserNotifications

class NotificationManager {
    
    let dates: [DateComponents] = []
    
    class func requestAuthorization() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            if success {
                scheduleNotification()
                print("All set!")
                
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    
    private class func scheduleNotification() {
        
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        
        for date in ImportantDates.allCases {
            let content = UNMutableNotificationContent()
            content.title = date.message
            content.subtitle = date.subtitle
            content.sound = UNNotificationSound.default
            
            let trigger = UNCalendarNotificationTrigger(dateMatching: date.components, repeats: true)
            let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request)
        }
        
       
        UNUserNotificationCenter.current().getPendingNotificationRequests { (notifications) in
            print("Set notification: \(notifications.count)")
            for item in notifications {
                print("Message: \(item.content.title). In \(item.trigger!)" )
            }
        }
    }
}

extension NotificationManager {
    private enum ImportantDates: CaseIterable{
        case motherDay
        case valentinesDay
        case february23
        case september1
        case march8
        
        var message: String {
            switch self {
                
            case .motherDay:
                return "Скоро день матери, просто напоминаем :)"
            case .valentinesDay:
                return "Порадуй свою вторую половинку 💛"
            case .february23:
                return "Мужчинам не дарят букеты? Глупости! Вы не видели наши специальные букеты 😉"
            case .september1:
                return "Дети скоро идут в школу, а мы поможем собраться!"
            case .march8:
                return "Подумайте о подарке на женский праздник заранее!"
            }
        }
        
        var subtitle: String {
            return "Мы всегда рядом с вами"
        }
        
        var components: DateComponents {
            var components = DateComponents()
            components.calendar = Calendar.current
            components.hour = 11
            components.minute = 0
            
            switch self {
            case .motherDay:
                components.day = 1
                components.month = 12
               
            case .valentinesDay:
                components.day = 11
                components.month = 2
                
            case .february23:
                components.day = 20
                components.month = 2
               
            case .september1:
                components.day = 29
                components.month = 8
                
            case .march8:
                components.day = 5
                components.month = 3
            }
            
            return components
        }
    }
}

extension Date {
    func get(_ components: Calendar.Component..., calendar: Calendar = Calendar.current) -> DateComponents {
        return calendar.dateComponents(Set(components), from: self)
    }

    func get(_ component: Calendar.Component, calendar: Calendar = Calendar.current) -> Int {
        return calendar.component(component, from: self)
    }
}
