import Foundation

class FreeRouteInfoProviderDecorator : RouteInfoProvider {
    let routeInfoProvider: RouteInfoProvider
    
    init(routeInfoProvider: RouteInfoProvider) {
        self.routeInfoProvider = routeInfoProvider
    }
    
    func provideRouteInfo(kilometers: Float) {
        routeInfoProvider.provideRouteInfo(kilometers: kilometers)
        print("Reklama: Spróbuj najlepsze pierogi w pierogarni na Mokotowie!")
    }
}
