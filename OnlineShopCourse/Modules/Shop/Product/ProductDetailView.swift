//
//  ProductDetailView.swift
//  OnlineShopCourse
//
//  Created by Evgeniy Safin on 16.10.2022.
//

//struct ProductDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductDetailView()
//    }
//}

import SwiftUI

struct ProductDetailView: View {
    @Environment(\.presentationMode) private var mode
    let product: ProductModel
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                // product images
                productImages
                // product data
                VStack(alignment: .leading, spacing: 5) {
                    HStack(spacing: 0) {
                        // product article
                        productArticle
                        Spacer()
                        // upload product data
                        uploadProductData
                    }
                    // product brand
                    productBrand
                    // product name
                    productName
                    // product description
                    productDescription
                    // product cost
                    productCost
                }
                .padding([.horizontal, .vertical])
                Spacer()
            }
            // close button
            closeButton
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.palette.parent.ignoresSafeArea())
    }
}

extension ProductDetailView {
    // product images
    private var productImages: some View {
        TabView {
            Image(product.image)
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
    }
    // product article
    private var productArticle: some View {
        Text(product.article)
            .font(.caption)
            .bold()
            .foregroundColor(Color.palette.parent)
            .padding(.horizontal, 5)
            .background(Color.palette.child.cornerRadius(5))
    }
    // product brand
    private var productBrand: some View {
        Text(product.brand.rawValue)
            .font(.caption)
            .bold()
            .foregroundColor(Color.palette.parent)
            .padding(.horizontal, 5)
            .background(Color.palette.child.cornerRadius(5))
    }
    // product name
    private var productName: some View {
        Text(product.name)
            .font(.headline)
            .foregroundColor(Color.palette.child)
    }
    // product description
    private var productDescription: some View {
        Text(product.description)
            .font(.subheadline)
            .foregroundColor(Color.palette.child)
    }
    // product cost
    private var productCost: some View {
        Text("\(product.cost.twoDecimalPlaces()) ₽")
            .font(.callout)
            .bold()
            .foregroundColor(Color.palette.child)
    }
    // upload product data
    private var uploadProductData: some View {
        Button(action: {
            // upload product data
        }, label: {
            Image(systemName: "arrow.up")
                .foregroundColor(Color.palette.child)
        })
    }
    // close button
    private var closeButton: some View {
        VStack(spacing: 0) {
            Spacer()
            Button(action: {
                mode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.compact.down")
                    .foregroundColor(Color.palette.child)
            })
        }
        .padding(.bottom)
    }
}

