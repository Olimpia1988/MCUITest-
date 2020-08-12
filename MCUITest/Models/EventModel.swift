import Foundation


struct EventModel: Codable {
  var eventHost: String
  var eventTopic: String
  var deventDate: String
//  var hostPhoto: UIImage
  
 static let dummyData = [EventModel(eventHost: "David Riffkin", eventTopic: "Breats feeding challanges", deventDate: "Augost 12, 5pm"), EventModel(eventHost: "Istishna Hussain", eventTopic: "Tips to keep the energy up", deventDate: "Augost 13, 5pm"), EventModel(eventHost: "Veronica Compean", eventTopic: "Group Therapy Session: Cope with the not knowing", deventDate: "Augost 14, 5pm")]
  
  
//When data is download use this function - Note that the func returns an array, thism may have to change
//  static func getEventData(from jsonData: Data) -> [EventModel] {
//    do {
//      let eventData = try JSONDecoder().decode([EventModel].self, from: jsonData)
//      return eventData
//    } catch {
//      dump(error)
//      return []
//    }
//  }
  
}


