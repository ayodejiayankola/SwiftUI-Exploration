//
//  ScheduleControlView.swift
//  LightScheduler
//
//  Created by Ayodeji Ayankola on 23/09/2024.
//


import SwiftUI

struct ScheduleControlView: View {
	@Binding var scheduleFrom: Date
	@Binding var scheduleTo: Date
	
	var body: some View {
		VStack(alignment: .leading) {
			Text("Schedule")
				.font(.system(size: 18, weight: .semibold))
				.foregroundColor(.white)
			
			HStack {
				ZStack {
					DatePicker("", selection: $scheduleFrom, displayedComponents: .hourAndMinute)
						.datePickerStyle(CompactDatePickerStyle())
						.labelsHidden()
						.opacity(0.8)
					
					Text(scheduleFrom, style: .time)
						.foregroundColor(.gray)
				}
				
				Spacer()
				
				ZStack {
					DatePicker("", selection: $scheduleTo, displayedComponents: .hourAndMinute)
						.datePickerStyle(CompactDatePickerStyle())
						.labelsHidden()
						.opacity(0.8)
					
					Text(scheduleTo, style: .time)
						.foregroundColor(.gray)
				}
			}
			.padding()
			.background(Color.white.opacity(0.1))
			.cornerRadius(12)
		}
	}
}

#Preview {
	ScheduleControlView(scheduleFrom: .constant(Date()), scheduleTo: .constant(Date().addingTimeInterval(3600)))
		.previewLayout(.sizeThatFits)
		.padding()
		.background(Color.black)
}
