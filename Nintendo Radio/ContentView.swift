//
//  ContentView.swift
//  Nintendo Radio
//
//  Created by 90305055 on 9/20/20.
//  Copyright © 2020 Gavin English. All rights reserved.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State var audioPlayer: AVAudioPlayer!
    @State var count = 1
    var body: some View {
        ZStack {
            Color.backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("Nintendo Radio").font(.system(size: 50)).fontWeight(.bold)
                    .foregroundColor(.buttonColor)
                }
                HStack {
                    Spacer()
                    Button(action: {
                        self.audioPlayer.play()
                    }) {
                        Image(systemName: "play.circle.fill").resizable()
                            .frame(width: 55, height: 55)
                            .aspectRatio(contentMode:.fit)
                            .foregroundColor(.buttonColor)
                    }
                    Spacer()
                    Button(action: {
                        self.audioPlayer.pause()
                    }) {
                        Image(systemName: "pause.circle.fill").resizable()
                            .frame(width: 55, height: 55)
                            .aspectRatio(contentMode:.fit)
                            .foregroundColor(.buttonColor)
                }
                    Spacer()
                    Button(action: {
                        if self.count < 10 {
                            self.count += 1
                        } else {
                            self.count = 1
                        }
                        let sound = Bundle.main.path(forResource: "Song\(self.count)", ofType: "mp3")
                            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                            self.audioPlayer.play()
                        }) {
                            Image(systemName: "forward.end").resizable()
                                .frame(width: 50, height: 50)
                                .aspectRatio(contentMode:.fit)
                                .foregroundColor(.buttonColor)
                }
                    Spacer()
            }
        }
    }
        .onAppear {
            let sound = Bundle.main.path(forResource: "Song1", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }


