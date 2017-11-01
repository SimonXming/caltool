import EventKit

if CommandLine.arguments.count != 3 {
    let errorMsg = "Error: Params not correct." + "\n" +
                   "Example: ./caltool 11-10-12:00 \"SomeThing to remember.\""
    print(errorMsg)
} else {
    let dateformatter = DateFormatter()
    dateformatter.dateFormat = "YYYY-MM-dd-HH:mm"
    let rawDate = CommandLine.arguments[1]
    let dateString = String(format:"2017-%@", rawDate)
    let startDate = dateformatter.date(from: dateString)!
    let endDate = startDate.addingTimeInterval(1 * 60 * 60)
    let titleText = CommandLine.arguments[2]
    let notesText = titleText
    let calendarEvent = PSEventHelper()
    calendarEvent.createSimpleEvent(titleText, notes: notesText, andWithDates: (startDate, endDate))
}
