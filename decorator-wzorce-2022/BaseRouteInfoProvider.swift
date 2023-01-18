import Foundation

class BaseRouteInfoProvider : RouteInfoProvider {
    func provideRouteInfo(kilometers: Float) {
        print("Cena trasy wyniesie \(round(kilometers*Float.random(in: 1.5...5)*100)/100)")
    }
}
