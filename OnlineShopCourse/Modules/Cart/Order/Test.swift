//
//  Test.swift
//  OnlineShopCourse
//
//  Created by Blue on 28/11/2022.
//

import SwiftUI

struct Test: View {
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                HStack {
                    Image("myImage")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading, 4)
                        .frame(width: 90)
                        .clipped()
                    VStack(alignment: .leading) {
                        Text("Inventory")
                            .foregroundColor(.white)
                            .font(.system(size: 40, weight: .medium, design: .rounded))
                        HStack {
                            Image(systemName: "battery.100.bolt")
                                .foregroundColor(.white)
                                .font(.system(size: 26, weight: .regular, design: .default))
                            Image(systemName: "checkmark.icloud")
                                .foregroundColor(.white)
                                .font(.system(size: 26, weight: .regular, design: .default))
                        }
                    }
                    .padding(.trailing, 14)
                    .frame(width: 180, alignment: .leading)
                    .clipped()
                    ZStack {
                        HStack(spacing: 0) {
                            Text("Search by")
                                .font(.system(size: 20, weight: .regular, design: .rounded))
                                .padding()
                            Text("Name")
                                .font(.system(size: 20, weight: .regular, design: .rounded))
                                .padding()
                            Image(systemName: "chevron.down")
                                .padding(.trailing, 5)
                                .foregroundColor(.secondary)
                            ZStack(alignment: .leading) {
                                Image(systemName: "magnifyingglass")
                                    .padding(.leading, 5)
                                    .font(.system(size: 30, weight: .semibold, design: .default))
                                Text("Hello, World!")
                                    .padding(.leading, 50)
                            }
                            .frame(width: 400, height: 50, alignment: .leading)
                            .clipped()
                            .background {
                                RoundedRectangle(cornerRadius: 5, style: .continuous)
                                .fill(Color(.systemFill))
                            }
                            .padding(.trailing)
                            ZStack {
                                Image(systemName: "trash")
                                    .font(.system(size: 30, weight: .semibold, design: .default))
                            }
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .background {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.secondary, lineWidth: 1)
                                .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.white))
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        .clipped()
                    }
                    .frame(maxWidth: 700, maxHeight: 60)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(.white)
                    }
                    Spacer()
                    ZStack {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                            .foregroundColor(Color(.sRGB, red: 27/255, green: 27/255, blue: 27/255))
                            .font(.system(size: 40, weight: .regular, design: .default))
                    }
                    .frame(maxWidth: 66, maxHeight: 66)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color(.sRGB, red: 217/255, green: 217/255, blue: 217/255))
                    }
                }
                .padding(.all, 10)
            }
            .padding(.vertical, 0)
            HStack(spacing: 6) {
                VStack {
                    HStack {
                        HStack {
                            Image(systemName: "rectangle.stack.fill.badge.plus")
                                .font(.system(size: 30, weight: .regular, design: .default))
                                .padding(.horizontal, 5)
                            Text("New CATEGORY".uppercased())
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                                .foregroundColor(.orange)
                        }
                        .frame(width: 190, height: 60)
                        .clipped()
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(Color(.sRGB, red: 237/255, green: 191/255, blue: 96/255), lineWidth: 1)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.clear))
                        }
                        ZStack {
                            Image(systemName: "line.3.horizontal.decrease.circle")
                                .font(.system(size: 40, weight: .regular, design: .default))
                        }
                        .frame(width: 58, height: 58)
                        .clipped()
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.clear, lineWidth: 1)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(.sRGB, red: 243/255, green: 243/255, blue: 243/255)))
                        }
                    }
                    .padding(.top, 10)
                    Divider()
                    ScrollView {
                        VStack {
                            HStack(spacing: 10) {
                                Image(systemName: "cart.fill")
                                    .imageScale(.large)
                                    .font(.system(size: 25, weight: .semibold, design: .default))
                                Text("ChinoMart")
                                    .foregroundColor(.primary)
                                    .font(.system(size: 25, weight: .medium, design: .rounded))
                            }
                            .frame(width: 255, height: 80)
                            .clipped()
                            .background {
                                RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.primary, lineWidth: 1)
                                .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.clear))
                            }
                        }
                    }
                }
                .frame(maxWidth: 270, maxHeight: .infinity)
                .clipped()
                .background {
                    RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .fill(.white)
                }
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        ZStack {
                            Text("10")
                                .font(.system(size: 30, weight: .medium, design: .rounded))
                        }
                        .frame(width: 50, height: 50)
                        .clipped()
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.primary, lineWidth: 5)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.clear))
                        }
                        .padding(.horizontal)
                        Text("Wine")
                            .font(.system(size: 40, weight: .medium, design: .rounded))
                        Spacer()
                        ZStack {
                            Image(systemName: "line.3.horizontal.decrease.circle")
                                .font(.system(size: 40, weight: .regular, design: .default))
                        }
                        .frame(width: 58, height: 58)
                        .clipped()
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.clear, lineWidth: 1)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(.sRGB, red: 217/255, green: 217/255, blue: 217/255)))
                        }
                        .padding(.trailing, 10)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 80)
                    .clipped()
                    .background {
                        RoundedRectangle(cornerRadius: 0, style: .continuous)
                        .fill(Color(.sRGB, red: 243/255, green: 243/255, blue: 243/255))
                    }
                    Rectangle()
                        .fill(Color(.sRGB, red: 237/255, green: 191/255, blue: 96/255))
                        .frame(maxWidth: .infinity, maxHeight: 6)
                        .clipped()
                    HStack {
                        HStack {
                            Image(systemName: "bag.badge.plus")
                                .imageScale(.large)
                                .font(.system(size: 30, weight: .semibold, design: .default))
                                .padding(.leading)
                            Text("NEW ITEM")
                                .font(.system(size: 25, weight: .semibold, design: .rounded))
                                .foregroundColor(.orange)
                        }
                        .frame(width: 200, height: 60)
                        .clipped()
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(Color(.sRGB, red: 237/255, green: 191/255, blue: 96/255), lineWidth: 1)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.white))
                        }
                        HStack {
                            Image(systemName: "bag.badge.plus")
                                .imageScale(.large)
                                .font(.system(size: 30, weight: .semibold, design: .default))
                                .padding(.leading)
                        }
                        .frame(width: 60, height: 60)
                        .clipped()
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(Color(.sRGB, red: 237/255, green: 191/255, blue: 96/255), lineWidth: 1)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.white))
                        }
                        HStack {
                            Image(systemName: "bag.badge.plus")
                                .imageScale(.large)
                                .font(.system(size: 30, weight: .semibold, design: .default))
                                .padding(.leading)
                        }
                        .frame(width: 60, height: 60)
                        .clipped()
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(Color(.sRGB, red: 237/255, green: 191/255, blue: 96/255), lineWidth: 1)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.white))
                        }
                    }
                    .frame(width: 524, height: 60)
                    .clipped()
                    .padding(.vertical, 8)
                    .padding(.leading, 5)
                    Divider()
                    ZStack {
                        VStack {
                            Image(systemName: "shippingbox")
                                .imageScale(.large)
                                .font(.system(size: 35, weight: .regular, design: .default))
                            Text("Product")
                                .font(.system(size: 20, weight: .regular, design: .rounded))
                                .foregroundColor(.orange)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .clipped()
                    }
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipped()
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color(.sRGB, red: 237/255, green: 191/255, blue: 96/255), lineWidth: 1)
                        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.white))
                    }
                    .padding(.vertical, 8)
                    .padding(.leading, 10)
                    HStack(spacing: 0) {
                        ZStack {
                            Text("All")
                                .font(.system(size: 20, weight: .regular, design: .rounded))
                        }
                        .frame(width: 100, height: 40)
                        .clipped()
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.secondary, lineWidth: 1)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.clear))
                        }
                        .padding(6)
                        ZStack {
                            Text("Dog")
                                .font(.system(size: 20, weight: .regular, design: .rounded))
                        }
                        .frame(width: 100, height: 40)
                        .clipped()
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.secondary, lineWidth: 1)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.clear))
                        }
                        .padding(6)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                    .clipped()
                    .background {
                        RoundedRectangle(cornerRadius: 0, style: .continuous)
                        .fill(Color(.quaternaryLabel))
                    }
                    HStack {
                        Image(systemName: "exclamationmark.octagon.fill")
                            .font(.system(size: 25, weight: .regular, design: .default))
                        Text("No item")
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                    }
                    .frame(width: 530, height: 40)
                    .clipped()
                    ScrollView {
                        VStack {
                            HStack(alignment: .top) {
                                ZStack {
                                    Image("myImage")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 70, height: 70)
                                        .clipped()
                                        .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                                }
                                .frame(width: 70, height: 70)
                                .clipped()
                                .background {
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                    .stroke(Color(.tertiaryLabel), lineWidth: 1)
                                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.clear))
                                }
                                .padding(.leading, 6)
                                VStack(alignment: .leading) {
                                    Text("Doggo Snacks")
                                        .font(.system(size: 20, weight: .medium, design: .rounded))
                                        .foregroundColor(Color(.sRGB, red: 64/255, green: 64/255, blue: 64/255))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("Keep your dog happy with our nutritious dog biscuits.")
                                        .font(.system(size: 14, weight: .regular, design: .rounded))
                                        .foregroundColor(Color(.sRGB, red: 141/255, green: 141/255, blue: 141/255))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .clipped()
                                    Spacer()
                                }
                                VStack(alignment: .trailing) {
                                    Text("240.000 đ")
                                        .kerning(-0.6)
                                        .font(.system(size: 20, weight: .medium, design: .default))
                                        .foregroundColor(Color(.sRGB, red: 64/255, green: 64/255, blue: 64/255))
                                        .frame(alignment: .trailing)
                                    Text("UPC 96353232335")
                                        .font(.system(size: 11, weight: .regular, design: .rounded))
                                    HStack {
                                        Image(systemName: "square.and.pencil")
                                            .imageScale(.large)
                                            .foregroundColor(.orange)
                                            .font(.body.weight(.heavy))
                                        Image(systemName: "trash.fill")
                                            .imageScale(.large)
                                            .font(.body)
                                            .foregroundColor(.red)
                                            .padding(.leading, 10)
                                    }
                                    .frame(width: 110, alignment: .trailing)
                                    .clipped()
                                }
                                Spacer()
                            }
                            .frame(maxWidth: .infinity, maxHeight: 80, alignment: .leading)
                            .clipped()
                        }
                    }
                    .padding(.top, 6)
                }
                .frame(maxWidth: 550, maxHeight: .infinity)
                .clipped()
                .background {
                    RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .fill(.white)
                }
                VStack(spacing: 0) {
                    HStack {
                        Image(systemName: "shippingbox")
                            .foregroundColor(Color(.sRGB, red: 60/255, green: 60/255, blue: 60/255))
                            .font(.system(size: 45, weight: .regular, design: .default))
                            .padding(.leading, 5)
                        Text("Item Information")
                            .foregroundColor(.white)
                            .font(.system(size: 35, weight: .medium, design: .rounded))
                            .padding()
                        Spacer()
                        ZStack {
                            Image(systemName: "line.3.horizontal.decrease.circle")
                                .font(.system(size: 40, weight: .regular, design: .default))
                        }
                        .frame(width: 58, height: 58)
                        .clipped()
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.clear, lineWidth: 1)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(.sRGB, red: 217/255, green: 217/255, blue: 217/255)))
                        }
                        .padding(.trailing, 10)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 78)
                    .clipped()
                    .background {
                        RoundedRectangle(cornerRadius: 0, style: .continuous)
                        .fill(Color(.sRGB, red: 237/255, green: 191/255, blue: 96/255))
                    }
                    ScrollView {
                        VStack(alignment: .leading, spacing: 10) {
                            HStack(alignment: .top) {
                                VStack(alignment: .leading) {
                                    Text("Doggo Snacks")
                                        .font(.system(size: 25, weight: .medium, design: .rounded))
                                        .foregroundColor(Color(.sRGB, red: 64/255, green: 64/255, blue: 64/255))
                                    Text("Keep your dog happy with our nutritious dog biscuits.")
                                        .font(.system(size: 17, weight: .regular, design: .rounded))
                                        .foregroundColor(.secondary)
                                    Spacer()
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("240.000 đ")
                                        .kerning(-0.6)
                                        .font(.system(size: 25, weight: .medium, design: .rounded))
                                        .foregroundColor(Color(.sRGB, red: 64/255, green: 64/255, blue: 64/255))
                                    Text("UPC 96353232335")
                                        .font(.system(size: 11, weight: .regular, design: .rounded))
                                    Spacer()
                                }
                            }
                            .frame(maxWidth: .infinity, maxHeight: 80, alignment: .leading)
                            .clipped()
                            .padding(.horizontal, 10)
                            .padding(.vertical, 7)
                            .background {
                                RoundedRectangle(cornerRadius: 4, style: .continuous)
                                .fill(Color(.systemFill))
                            }
                            HStack(spacing: 5) {
                                ZStack {
                                    Image("myImage")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .mask { RoundedRectangle(cornerRadius: 5, style: .continuous) }
                                }
                                .frame(width: 400, height: 330)
                                .clipped()
                                .background {
                                    RoundedRectangle(cornerRadius: 5, style: .continuous)
                                    .stroke(Color(.quaternaryLabel), lineWidth: 1)
                                    .background(RoundedRectangle(cornerRadius: 5, style: .continuous).fill(.clear))
                                }
                                .padding(.leading, 5)
                                VStack {
                                    ZStack {
                                        Image("myImage")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .mask { RoundedRectangle(cornerRadius: 5, style: .continuous) }
                                    }
                                    .frame(width: 105, height: 105)
                                    .clipped()
                                    .background {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                        .stroke(Color(.quaternaryLabel), lineWidth: 1)
                                        .background(RoundedRectangle(cornerRadius: 5, style: .continuous).fill(.clear))
                                    }
                                    ZStack {
                                        Image("myImage")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .mask { RoundedRectangle(cornerRadius: 5, style: .continuous) }
                                    }
                                    .frame(width: 105, height: 105)
                                    .clipped()
                                    .background {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                        .stroke(Color(.quaternaryLabel), lineWidth: 1)
                                        .background(RoundedRectangle(cornerRadius: 5, style: .continuous).fill(.clear))
                                    }
                                    ZStack {
                                        Image("myImage")
                                            .renderingMode(.original)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .mask { RoundedRectangle(cornerRadius: 5, style: .continuous) }
                                    }
                                    .frame(width: 105, height: 105)
                                    .clipped()
                                    .background {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                        .stroke(Color(.quaternaryLabel), lineWidth: 1)
                                        .background(RoundedRectangle(cornerRadius: 5, style: .continuous).fill(.clear))
                                    }
                                }
                            }
                            HStack {
                                Spacer()
                                VStack(alignment: .trailing, spacing: 5) {
                                    HStack(alignment: .top, spacing: 4) {
                                        Text("982 Bags")
                                            .font(.system(size: 17, weight: .regular, design: .rounded))
                                            .foregroundColor(Color(.sRGB, red: 88/255, green: 88/255, blue: 88/255))
                                        Text("In Stock")
                                            .font(.system(size: 17, weight: .regular, design: .rounded))
                                            .foregroundColor(.orange)
                                    }
                                    Image("myImage")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 140, height: 50, alignment: .trailing)
                                        .clipped()
                                    Text("111011222422")
                                        .font(.system(size: 15, weight: .regular, design: .monospaced))
                                }
                                .padding(.trailing, 10)
                            }
                            Divider()
                            VStack(alignment: .leading) {
                                Text("Description")
                                    .font(.system(size: 25, weight: .regular, design: .rounded))
                                    .foregroundColor(.primary)
                                Text("Keep your dog happy with our nutritious dog biscuits.")
                                    .font(.system(size: 17, weight: .regular, design: .rounded))
                                    .foregroundColor(Color(.sRGB, red: 88/255, green: 88/255, blue: 88/255))
                            }
                            .frame(maxWidth: .infinity, maxHeight: 80, alignment: .leading)
                            .clipped()
                            .padding(.horizontal, 10)
                            Divider()
                        }
                    }
                }
                .frame(maxWidth: 550, maxHeight: .infinity)
                .clipped()
                .background {
                    RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .fill(.white)
                }
            }
            .mask { RoundedRectangle(cornerRadius: 5, style: .continuous) }
            .padding(.horizontal, 6)
            .padding(.bottom, 6)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .clipped()
        .background {
            RoundedRectangle(cornerRadius: 0, style: .continuous)
            .fill(Color(.sRGB, red: 29/255, green: 34/255, blue: 38/255))
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
