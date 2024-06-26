//
//  ProfileView.swift
//  RiderPrototype
//
//  Created by Gagan Pareek on 01/06/24.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                        Image(systemName: "chevron.left.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.black)
                        Spacer()
                }
            }
            ScrollView {
                HStack {
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("Gagan Pareek")
                            .font(.largeTitle)
                            .bold()
                        Text("+91-8989898989")
                            .fontWeight(.semibold)
                    }
                }
                Divider()
                HStack {
                    Text("Orders")
                        .fontWeight(.bold)
                        .font(.title2)
                        .padding(.bottom)
                    Spacer()
                }
                HStack {
                    Text("Today :")
                        .fontWeight(.medium)
                    Spacer()
                    Text("5")
                        .fontWeight(.bold)
                        .font(.system(size: 18))
                        .padding(.trailing, 8)
                }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke()
            }
                HStack {
                    Text("This Week :")
                        .fontWeight(.medium)
                    Spacer()
                    Text("18")
                        .fontWeight(.bold)
                        .font(.system(size: 18))
                        .padding(.trailing, 8)
                }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke()
            }
                HStack {
                    Text("This Month :")
                        .fontWeight(.medium)
                    Spacer()
                    Text("51")
                        .fontWeight(.bold)
                        .font(.system(size: 18))
                        .padding(.trailing, 8)
                }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke()
            }
                Divider()
                    .padding(.top)
                HStack {
                    Text("Revenue")
                        .fontWeight(.bold)
                        .font(.title2)
                        .padding(.bottom)
                    Spacer()
                }
                HStack {
                    VStack {
                        Text("Today")
                            .fontWeight(.medium)
                            .foregroundStyle(.white)
                        Spacer()
                        Text("5,100")
                            .fontWeight(.bold)
                            .font(.system(size: 28))
                            .foregroundStyle(.white)
                    }
                    .frame(width: UIScreen.main.bounds.width/3)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 10.0)
                }
                    Spacer()
                    VStack {
                        Text("Week")
                            .fontWeight(.medium)
                            .foregroundStyle(.white)
                        Spacer()
                        Text("11,350")
                            .fontWeight(.bold)
                            .font(.system(size: 28))
                            .foregroundStyle(.white)
                    }
                    .frame(width: UIScreen.main.bounds.width/3)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 10.0)
                }
                }
                HStack {
                    Text("Last Withdrawal")
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                    Spacer()
                    Text("5,100")
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                        .foregroundStyle(.white)
                }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 10.0)
            }
                HStack {
                    Text("Total Withdrawal")
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                    Spacer()
                    Text("13,400")
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                        .foregroundStyle(.white)
                }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 10.0)
            }
            }
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
