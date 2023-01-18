import Foundation

let inputHandler: InputHandler = InputHandler()
let input = inputHandler.getInput()

let kilometers = input.0
let subscriptionType = input.1

let routeInfoProvider: RouteInfoProvider = BaseRouteInfoProvider()
var decorated: RouteInfoProvider = FreeRouteInfoProviderDecorator(routeInfoProvider: routeInfoProvider)

//Free
if subscriptionType == "F" {
    decorated = FreeRouteInfoProviderDecorator(routeInfoProvider: routeInfoProvider)
}
//Small company
else if subscriptionType == "S" {
    
}
//Enterprise
else if subscriptionType == "E" {
    
}


decorated.provideRouteInfo(kilometers: kilometers)
