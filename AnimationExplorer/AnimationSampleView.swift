//
//  AnimationSampleView.swift
//  AnimationExplorer
//
//  Created by Robert Martinez on 6/25/23.
//

import SwiftUI

struct AnimationSampleView: View {
    var color: Color
    var alignment: Alignment
    
    var startPoint: CGPoint
    var endPoint: CGPoint
    
    let sampleSize = 50.0
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .fill(color)
            .frame(width: sampleSize, height: sampleSize)
            .overlay(
                AnimationChartView(startPoint: startPoint, endPoint: endPoint, forThumbnail: true)
            )
            .frame(maxWidth: .infinity, alignment: alignment)
    }
}

#Preview {
    AnimationSampleView(color: .pink, alignment: .leading, startPoint: CGPoint(x: 0, y: 1), endPoint: CGPoint(x: 1, y: 0))
}
