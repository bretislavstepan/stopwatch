//
//  Copyright © 2017 Břetislav Štěpán.
//  Licensed under MIT.
//

import Foundation

extension TimeInterval {
    
    public var formatted: String {
        get {
            let formatter = DateComponentsFormatter()

            formatter.allowedUnits = [.hour, .minute, .second]
            formatter.unitsStyle = .positional
            formatter.zeroFormattingBehavior = .pad

            return formatter.string(from: self) ?? ""
        }
    }

    public var formattedForGitlab: String {
        get {
            let formatter = DateComponentsFormatter()

            formatter.allowedUnits = [.hour, .minute]
            formatter.unitsStyle = .abbreviated
            let time = formatter.string(from: self) ?? ""

            return "\\spend " + time
        }
    }

}
