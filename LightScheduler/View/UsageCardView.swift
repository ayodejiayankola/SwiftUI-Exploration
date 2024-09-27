//
//  UsageCardView.swift
//  LightScheduler
//
//  Created by Ayodeji Ayankola on 24/09/2024.
//

import SwiftUI

struct UsageCardView: View {
	var body: some View {
		VStack(spacing: 8) {
			UsageInfoView(title: "Daily Usage:", value: "1.5 kWh")
			UsageInfoView(title: "Monthly Usage:", value: "18 kWh")
			UsageInfoView(title: "Total Usage Hours:", value: "1.5 Hrs")
		}
		.padding()
		.background(Color.white.opacity(0.1))
		.cornerRadius(15)
		.overlay(
			RoundedRectangle(cornerRadius: 15)
				.stroke(Color.white.opacity(0.2), lineWidth: 1)
		)
	}
}

#Preview {
	UsageCardView()
		.previewLayout(.sizeThatFits)
		.padding()
		.background(Color.black)
}
