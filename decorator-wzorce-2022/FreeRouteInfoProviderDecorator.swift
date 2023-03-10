import Foundation

class FreeRouteInfoProviderDecorator : RouteInfoProvider {
    let routeInfoProvider: RouteInfoProvider
    
    init(routeInfoProvider: RouteInfoProvider) {
        self.routeInfoProvider = routeInfoProvider
    }
    
    func provideRouteInfo(kilometers: Float) -> Float {
        let price: Float = routeInfoProvider.provideRouteInfo(kilometers: kilometers)
        print("Reklama: Spróbuj najlepsze pierogi w pierogarni na Mokotowie!")
        return price
    }
}
