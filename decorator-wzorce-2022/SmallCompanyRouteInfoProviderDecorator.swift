import Foundation

class SmallCompanyRouteInfoProviderDecorator : RouteInfoProvider {
    let routeInfoProvider: RouteInfoProvider
    
    init(routeInfoProvider: RouteInfoProvider) {
        self.routeInfoProvider = routeInfoProvider
    }
    
    func provideRouteInfo(kilometers: Float) -> Float {
        let price: Float = routeInfoProvider.provideRouteInfo(kilometers: kilometers)
        print("Cena różni się od średniej rynkowej o \(round(kilometers*Float.random(in: 0...0.5)*100)/100)")
        return price
    }
}
