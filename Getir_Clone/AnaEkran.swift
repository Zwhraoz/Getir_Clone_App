//
//  AnaEkran.swift
//  Getir_Clone
//
//  Created by zehra özer on 9.05.2024.
//

import SwiftUI

struct AnaEkran: View {
    
    let resimler = ["1","2","3","4","5","6","7","8"]
    let kategoriler = ["categories1" , "categories2", "categories3" , "categories4" ,"categories5",  "categories6" ,"categories7", "categories8",  "categories9", "categories10" , "categories11", "categories12" , "categories13" ,"categories14" , "categories15" , "categories16", "categories17" , "categories18", "categories19" , "categories20" ]
    
    let kategoriAdi = ["Yaza Özel" ,"indirimler" , "Bana Özel" ,"meyve & sebze","Fit & From" ,"Temel Gıda" , "Atıştırmalık" ,"Dondurma", "Süt Ürünleri" , "evcil hayvan" ,"Bebek" , "kİşisel Bakım" ,"Ev Bakım","Su & Icecek","Ev & Yaşam" , "Teknoloji" ,"Fırından" , "Yiyecek" , "Kahvaltılık" , "Cinsel Sağlık"]
    
    @State private var currentPage = "Home" // State for tracking current page

    
    var body: some View {
        
        
        
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                Text("getir")
                    .font(.title)
                    .bold()
                    .foregroundColor(.yellow)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 10)
                    .background(Color.mor) // Mor ile arka planı değiştirin
                
                
                ScrollView {
                    HStack(spacing: 0) {
                        Text("Ev,").foregroundColor(.mor)
                            .font(.title)
                        
                        Text("Atatürk Caddesi 29.Sk, no:43, Merkez, İstanbul")
                            .lineLimit(1)
                            .font(.title3)
                        
                        Image(systemName: "chevron.down")
                            .foregroundColor(.mor)
                        
                        Spacer()
                       

                        
                            VStack(spacing: 0) {
                                Text("TVS")
                                    .font(.headline)
                                    .padding(.horizontal, 30)
                                    .padding(.vertical, 4)
                                    .clipShape(RoundedRectangle(cornerRadius: 0))
                                
                                Text("15 dk")
                                    .font(.title)
                                Spacer()
                            }
                            .background(Color.yellow)
                            .cornerRadius(20)
                        
                    }.offset(x:10 , y:0)
                    .frame(width: 380  , height: 70)
                    .padding(.horizontal, 5)
                    .background(Color.white.opacity(0.2))
                    .frame(maxWidth: .infinity)
                    
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 0) {
                            ForEach(resimler, id: \.self) { resim in
                                HStack {
                                    Image(resim)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 400 , height: 250)
                                        .cornerRadius(10)
                                }.offset(x:1, y:-30)
                            }
                        }
                    }
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                        ForEach(0..<min(kategoriler.count, kategoriAdi.count), id: \.self) { index in
                            VStack {
                                Image(kategoriler[index])
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(10)
                                    .shadow(radius: 20)
                                Text(kategoriAdi[index])
                                    .font(.caption)
                                    .font(.caption)
                            }.offset(x:1, y:-40)
                        }
                    }
                    .padding(.horizontal, 10)
                }
                
                
                
              
                HStack {
                                   Spacer()
                                   Button(action: {
                                       self.currentPage = "Home"
                                   }) {
                                       Image(self.currentPage == "Home" ? "home_selected" : "home")
                                           .resizable()
                                           .aspectRatio(contentMode: .fit)
                                           .frame(width: 30)
                                           .offset(x:0 , y:-15)
                                           .padding(.vertical)
                                   }
                                   Spacer()
                                   
                                   Button(action: {
                                       self.currentPage = "Arama"
                                   }) {
                                       Image(self.currentPage == "Arama" ? "search_selected" : "search")
                                           .resizable()
                                           .aspectRatio(contentMode: .fit)
                                           .frame(width: 30)
                                           .offset(x:0 , y:-15)
                                           .padding(.vertical)
                                   }
                                   Spacer()
                                   
                                   
                                   Button(action: {
                                       self.currentPage = "AnaEkran"
                                   }) {
                                       Circle()
                                           .fill(Color.mor)
                                           .frame(width: 70)
                                           .offset(x:0 , y:-35)
                                           .shadow(radius: 20)
                                           .overlay(
                                               Image("menu1")
                                                .offset(x:0 , y:-35)
                                           )
                                           .font(.title)
                                           .padding(.vertical)
                                   }
                                   Spacer()
                                   
                                   Button(action: {
                                       self.currentPage = "Profil"
                                   }) {
                                       Image(self.currentPage == "Profil" ? "profile_selected" : "profile")
                                           .resizable()
                                           .aspectRatio(contentMode: .fit)
                                           .frame(width: 30)
                                           .offset(x:0 , y:-15)
                                           .padding(.vertical)
                                   }
                                   Spacer()
                                   Button(action: {
                                       self.currentPage = "Kampanya"
                                   }) {
                                       Image(self.currentPage == "Kampanya" ? "gift_selected" : "gift")
                                           .resizable()
                                           .aspectRatio(contentMode: .fit)
                                           .frame(width: 30)
                                           .offset(x:0 , y:-15)
                                           .padding(.vertical)
                                   }
                                   Spacer()
                               }
                               .background(Color.white)
                                   .padding(.bottom, -60)
            }

        }
    }
}


#Preview {
    AnaEkran()
}
