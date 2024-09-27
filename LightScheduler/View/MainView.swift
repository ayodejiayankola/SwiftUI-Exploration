//
//  MainView.swift
//  LightScheduler
//
//  Created by Ayodeji Ayankola on 22/09/2024.
//

import SwiftUI

struct MainView: View {
	@State private var powerOn: Bool = false
	@State private var brightness: Double = 0.0
	@State private var previousBrightness: Double = 100.0
	@State private var scheduleFrom: Date = Date()
	@State private var scheduleTo: Date = Date().addingTimeInterval(4 * 3600)
	@State private var bulbScale: CGFloat = 1.0
	@State private var isBulbEnlarged: Bool = false
	
	var body: some View {
		ZStack {
			LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.9), Color.black]), startPoint: .top, endPoint: .bottom)
				.edgesIgnoringSafeArea(.all)
			
			VStack(spacing: 30) {
				PowerControlView(powerOn: $powerOn, brightness: $brightness, previousBrightness: $previousBrightness)
				BrightnessControlView(powerOn: $powerOn, brightness: $brightness, bulbScale: $bulbScale)
				ScheduleControlView(scheduleFrom: $scheduleFrom, scheduleTo: $scheduleTo)
				UsageCardView()
				BulbToggleButtonView(isBulbEnlarged: $isBulbEnlarged, bulbScale: $bulbScale)
				
				Spacer()
			}
			.padding()
		}
	}
}

#Preview {
	MainView()
}
