//
//  BulbToggleButtonView.swift
//  LightScheduler
//
//  Created by Ayodeji Ayankola on 23/09/2024.
//

//
//  BulbToggleButtonView.swift
//  LightScheduler
//
//  Created by Ayodeji Ayankola on 27/09/2024.
//

import SwiftUI

struct BulbToggleButtonView: View {
	@Binding var isBulbEnlarged: Bool
	@Binding var bulbScale: CGFloat
	
	var body: some View {
		VStack {
			Button(action: {
				withAnimation {
					isBulbEnlarged.toggle()
					bulbScale = isBulbEnlarged ? 1.5 : 1.0
				}
			}) {
				Text(isBulbEnlarged ? "Restore Size" : "Enlarge Bulb")
					.font(.system(size: 16, weight: .medium, design: .rounded))
					.foregroundColor(.white)
					.padding()
					.frame(maxWidth: .infinity)
					.background(
						RoundedRectangle(cornerRadius: 10)
							.stroke(Color.yellow, lineWidth: 2)
							.background(isBulbEnlarged ? Color.gray.opacity(0.2) : Color.gray.opacity(0.1)) 
							.cornerRadius(10)
					)
			}
			.padding(.top, 20)
			.padding(.horizontal, 16)
		}
	}
}

#Preview {
	BulbToggleButtonView(isBulbEnlarged: .constant(false), bulbScale: .constant(1.0))
		.previewLayout(.sizeThatFits)
		.padding()
		.background(Color.black)
}
