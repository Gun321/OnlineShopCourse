//
//  CartView.swift
//  OnlineShopCourse
//
//  Created by Evgeniy Safin on 15.10.2022.
//

//struct CartView_Previews: PreviewProvider {
//    static var previews: some View {
//        CartView()
//    }
//}

import SwiftUI

struct CartView: View {
    @EnvironmentObject private var authVM: AuthViewModel
    @EnvironmentObject private var shopVM: ShopViewModel
    @EnvironmentObject private var cartVM: CartViewModel
    @State private var selectedPosition: PositionModel? = nil
    @State private var showOrderDetailsView: Bool = false
    var body: some View {
        ZStack {
            // order details
            orderDetails
                .onAppear {
                    getUserDetails()
                }
            VStack(spacing: 0) {
                // nav bar
                navBar
                // positions
                positions
                    .animation(.linear)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.palette.parent.ignoresSafeArea())
    }
    // get user details
    private func getUserDetails() {
        cartVM.orderDetails.secondName = authVM.user?.secondName ?? ""
        cartVM.orderDetails.firstName = authVM.user?.firstName ?? ""
        cartVM.orderDetails.thirdName = authVM.user?.thirdName ?? ""
        cartVM.orderDetails.email = authVM.user?.email ?? ""
        cartVM.orderDetails.phone = authVM.user?.phone ?? ""
        cartVM.orderDetails.index = authVM.user?.index ?? ""
        cartVM.orderDetails.country = authVM.user?.country ?? ""
        cartVM.orderDetails.city = authVM.user?.city ?? ""
        cartVM.orderDetails.address = authVM.user?.address ?? ""
    }
}

extension CartView {
    // order details
    @ViewBuilder private var orderDetails: some View {
        if showOrderDetailsView {
            OrderDetailsView(showOrderDetailsView: $showOrderDetailsView)
                .transition(.move(edge: .top))
                .animation(.linear(duration: 0.88))
                .zIndex(1)
        }
    }
    // nav bar
    private var navBar: some View {
        HStack(spacing: 0) {
            uploadOrder
            Spacer()
            total
            Spacer()
            resetOrder
        }
        .padding([.horizontal, .vertical])
        .background(Color.palette.child.ignoresSafeArea())
    }
    // upload order
    @ViewBuilder private var uploadOrder: some View {
        if !cartVM.positions.isEmpty {
            Button(action: {
                showOrderDetailsView.toggle()
            }, label: {
                CloudAnimation()
            })
        } else {
            Image(systemName: "icloud.and.arrow.up")
                .foregroundColor(Color.palette.parent)
                .bold()
        }
    }
    // total
    private var total: some View {
        Text("\(cartVM.total.twoDecimalPlaces()) ₽")
            .font(.headline)
            .foregroundColor(Color.palette.parent)
    }
    // reset order
    private var resetOrder: some View {
        Button(action: {
            cartVM.resetOrder()
        }, label: {
            Image(systemName: "arrow.triangle.2.circlepath")
                .foregroundColor(Color.palette.parent)
                .bold()
        })
    }
    // positions
    private var positions: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 10) {
                ForEach(cartVM.positions) { position in
                    PositionSwipeView(position: $cartVM.positions[cartVM.getPositionIndex(position: position)])
                        .onTapGesture {
                            selectedPosition = position
                        }
                }
                .sheet(item: $selectedPosition) { position in
                    ProductDetailView(product: $shopVM.products[shopVM.getProductIndex(product: position.product)], amount: position.amount, position: position)
                }
            }
        }
        .padding(.vertical)
    }
}
