import Foundation

class BaseRouteInfoProvider : RouteInfoProvider {
    func provideRouteInfo(kilometers: Float) -> Float {
        let price: Float = round(kilometers*Float.random(in: 1.5...5)*100)/100
        print("Cena trasy wyniesie \(price)")
        return price
    }
}
