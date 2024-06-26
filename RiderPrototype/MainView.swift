//
//  MainView.swift
//  RiderPrototype
//
//  Created by Gagan Pareek on 01/06/24.
//

import SwiftUI

struct MainView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView {
                    HStack {
                        NavigationLink {
                            ProfileView()
                                .navigationBarBackButtonHidden()
                        } label: {
                            Image(systemName: "ellipsis.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                            .foregroundStyle(.black)
                        }
                        Spacer()
                        Image(systemName: "power.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    }
                    .padding(.bottom, 8)
                        
                        HStack {
                            Text("Orders")
                                .font(.largeTitle)
                                .bold()
                            Spacer()
                        }
                    }
                    .scrollIndicators(.hidden)
                }
                .padding(.horizontal)
                .padding(.top)
                Spacer()
                Rectangle()
                    .ignoresSafeArea()
                    .frame(height: 55)
                    .overlay {
                        HStack {
                            Button {
                                presentationMode.wrappedValue.dismiss()
                            } label: {
                                Image(systemName: "arrow.left")
                                    .resizable()
                                    .frame(width: 35, height: 30)
                                    .foregroundStyle(.white)
                                    .padding(.leading, 24)
                            }
                            Spacer()
                        }
                    }
            }
        }
    }
}

#Preview {
    MainView()
}
