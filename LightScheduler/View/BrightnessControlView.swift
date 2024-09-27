//
//  BrightnessControlView.swift
//  LightScheduler
//
//  Created by Ayodeji Ayankola on 23/09/2024.
//

import SwiftUI

struct BrightnessControlView: View {
	@Binding var powerOn: Bool
	@Binding var brightness: Double
	@Binding var bulbScale: CGFloat

	var body: some View {
		VStack {
			Text("\(Int(brightness))% Brightness")
				.font(.system(size: 34, weight: .bold, design: .rounded))
				.foregroundColor(.white)
				.padding(.bottom, 10)

			ZStack {
				if powerOn {
					Circle()
						.fill(Color.yellow.opacity(0.2))
						.frame(width: 190, height: 190)
						.blur(radius: 30)
						.opacity(brightness / 100)
				}
		
				Image(systemName: "lightbulb.fill")
					.resizable()
					.scaledToFit()
					.frame(width: 100, height: 100)
					.foregroundColor(powerOn ? .yellow : Color.gray.opacity(0.6))
					.opacity(powerOn ? brightness / 100 : 0.2)
					.scaleEffect(bulbScale)
					.animation(.interpolatingSpring(stiffness: 100, damping: 10), value: bulbScale)
					.padding(50)
			}
			
			HStack {
				Image(systemName: "sun.min.fill")
					.foregroundColor(.gray)
				
				Slider(value: $brightness, in: 0...100, step: 1)
					.accentColor(.yellow)
					.onChange(of: brightness) {
						powerOn = brightness > 0
					}
				
				Image(systemName: "sun.max.fill")
					.foregroundColor(.yellow)
			}
			.padding(.horizontal, 20)
		}
	}
}

#Preview {
	BrightnessControlView(powerOn: .constant(true), brightness: .constant(40), bulbScale: .constant(1.0))
		.previewLayout(.sizeThatFits)
		.padding()
		.background(Color.black)
}
