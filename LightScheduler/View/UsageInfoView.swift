//
//  UsageInfoView.swift
//  LightScheduler
//
//  Created by Ayodeji Ayankola on 25/09/2024.
//

import SwiftUI

struct UsageInfoView: View {
	var title: String
	var value: String

	var body: some View {
		HStack {
			Text(title)
				.font(.system(size: 16, weight: .medium))
				.foregroundColor(.gray)

			Spacer()

			Text(value)
				.font(.system(size: 16, weight: .bold))
				.foregroundColor(.white)
		}
	}
}

#Preview {
	UsageInfoView(title: "Example Usage:", value: "1.0 kWh")
		.previewLayout(.sizeThatFits)
		.padding()
		.background(Color.black)
}

