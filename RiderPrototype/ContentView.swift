//
//  ContentView.swift
//  RiderPrototype
//
//  Created by Gagan Pareek on 01/06/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
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
                    .padding(.bottom, 30)
                        VStack {
                            HStack {
                                Text("Where to go ?")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white)
                                Spacer()
                                Text("Pick-Up")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black)
                                    .opacity(0.8)
                                    .padding(.vertical ,4)
                                    .padding(.horizontal ,8)
                                    .background {
                                        Capsule()
                                            .foregroundStyle(.white)
                                    }
                            }
                            HStack {
                                Text("B-6, ABC Street, Malviya Nagar, Jaipur")
                                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white)
                                Spacer()
                            }
                        }
                        .padding()
                        .background {
                            Rectangle()
                                .foregroundStyle(.black)
                                .cornerRadius(10)
                                .opacity(0.9)
                        }
                        .cornerRadius(10)
                        Rectangle()
                            .foregroundStyle(.yellow)
                            .overlay {
                                Map()
                            }
                            .cornerRadius(10)
                            .frame(height: 200)
                                HStack {
                                    Text("Time :")
                                        .font(.title)
                                        .fontWeight(.bold)
                                    Spacer()
                                
                                    Text("11")
                                        .fontWeight(.bold)
                                        .font(.system(size: 58))
                                        .padding(.trailing, 8)
                                    Text("Minutes Remaining")
                                        .fontWeight(.semibold)
                                    Spacer()
                                }
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 10.0)
                                    .stroke()
                            }
                        Divider()
                            .padding()
                        VStack {
                            HStack {
                                Text("Seller")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white)
                                    .opacity(0.8)
                                    .padding(.vertical ,4)
                                    .padding(.horizontal ,8)
                                    .background {
                                        Capsule()
                                            .foregroundStyle(.black)
                                    }
                                Spacer()
                            }
                            HStack {
                                Text("XYZ Medical Store, Malviya Nagar")
                                    .frame(height: 100)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Spacer()
                            }
                            Divider()
                            HStack {
                                Text("+91-9876543210")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black)
                                Spacer()
                            }
                        }
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                        VStack {
                            HStack {
                                Text("Buyer")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white)
                                    .opacity(0.8)
                                    .padding(.vertical ,4)
                                    .padding(.horizontal ,8)
                                    .background {
                                        Capsule()
                                            .foregroundStyle(.black)
                                    }
                                Spacer()
                            }
                            HStack {
                                Text("Yash Saxena")
                                    .frame(height: 50)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Spacer()
                            }
                            Divider()
                            HStack {
                                Text("+91-9876543210")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black)
                                Spacer()
                            }
                        }
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
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
                            Spacer()
                            NavigationLink {
                                MainView().navigationBarBackButtonHidden()
                            } label: {
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .frame(width: 35, height: 30)
                                    .foregroundStyle(.white)
                                    .padding(.trailing, 24)
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
