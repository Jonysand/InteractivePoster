//
//  clipPath.swift
//  socketClient
//
//  Created by Yongkun Li on 2/12/20.
//  Copyright © 2020 Yongkun Li. All rights reserved.
//

import SwiftUI

struct clipPath: View {
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0.0, y: 0.0))
            path.addLine(to: CGPoint.init(x: 0.0, y: height))
            path.addLine(to: CGPoint.init(x: width, y: height))
        }

    }
}

struct clipPath_Previews: PreviewProvider {
    static var previews: some View {
        clipPath(width: 360.0, height: 240.0)
    }
}
