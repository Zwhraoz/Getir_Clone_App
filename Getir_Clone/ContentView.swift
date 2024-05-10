//
//  ContentView.swift
//  Getir_Clone
//
//  Created by zehra özer on 9.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let resimler = ["1","2","3","4","5","6","7","8"]
        let kategoriler = ["categories1" , "categories2", "categories3" , "categories4" ,"categories5",  "categories6" ,"categories7", "categories8",  "categories9", "categories10" , "categories11", "categories12" , "categories13" ,"categories14" , "categories15" , "categories16", "categories17" , "categories18", "categories19" , "categories20" ]
        let kategoriAdi = ["Yaza Özel" ,"indirimler" , "Bana Özel" ,"Su & içecek" ,"meyve & sebze" ,"Fırından" , "kahvaltılık" ,"Yiyecek" ,"Fit & From" , "evcil hayvan" ,"Bebek" , "Cinsel Sağlık" , "Ev & Yaşam"]

        
      
       
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
                            .padding(.horizontal, 20)
                            .padding(.vertical, 7)
                            .clipShape(RoundedRectangle(cornerRadius: 0))
                        
                        Text("15 dk")
                            .font(.title)
                    } .background(Color.yellow)
                    
                }
                .frame(width: 380  , height: 70)
                .padding(.horizontal, 5)
                .background(Color.white.opacity(0.2))
                .frame(maxWidth: .infinity)
                
                
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(resimler, id: \.self) { resim in
                            HStack {
                                Image(resim)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 400 , height: 250)
                                    .cornerRadius(10)
                            }
                        }
                    }
                }
                
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                                           ForEach(kategoriler, id: \.self) { kategori in
                                               VStack {
                                                   Image(kategori)
                                                       .resizable()
                                                       .frame(width: 80 , height: 80)
                                                   Text(kategori)
                                                       .font(.caption)
                                               }
                                           }
                                       }
                                       .padding(.horizontal, 10)
                                   }
                                   
                                   
            Spacer()
        }
        }
    }
}

#Preview {
    ContentView()
}
