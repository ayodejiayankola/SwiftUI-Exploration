//
//  PowerControlView.swift
//  LightScheduler
//
//  Created by Ayodeji Ayankola on 23/09/2024.
//


import SwiftUI

struct PowerControlView: View {
	@Binding var powerOn: Bool
	@Binding var brightness: Double
	@Binding var previousBrightness: Double

	var body: some View {
		HStack {
			Text("Power")
				.font(.system(size: 20, weight: .bold, design: .rounded))
				.foregroundColor(.white)

			Spacer()

			Toggle(isOn: $powerOn) {
				Text("")
			}
			.toggleStyle(SwitchToggleStyle(tint: .yellow))
			.onChange(of: powerOn) { _, newValue in
				if !newValue {
					previousBrightness = brightness
					brightness = 0
				} else {
					brightness = previousBrightness > 0 ? previousBrightness : 100
				}
			}
		}
		.padding(.top, 30)
	}
}

#Preview {
		PowerControlView(powerOn: .constant(true), brightness: .constant(75), previousBrightness: .constant(100))
			.previewLayout(.sizeThatFits)
			.padding()
			.background(Color.black)
}
