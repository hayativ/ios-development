//
//  ViewController.swift
//  MusicPlayer
//
//  Created by Михаил Давыдов on 08.11.2025.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    private var tracks: [Track] = [
        Track(title: "Track 1", fileName: "1.mp3", coverName: "1"),
        Track(title: "Track 2", fileName: "2.mp3", coverName: "2"),
        Track(title: "Track 3", fileName: "3.mp3", coverName: "3"),
        Track(title: "Track 4", fileName: "4.mp3", coverName: "4"),
        Track(title: "Track 5", fileName: "5.mp3", coverName: "5")
    ]
    
    private var currentIndex = 0
    private var audioPlayer: AVAudioPlayer?
    private var isPlaying = false
    
    // UI Elements
    private let coverImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 12
        return iv
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    private let prevButton = UIButton(type: .system)
    private let playPauseButton = UIButton(type: .system)
    private let nextButton = UIButton(type: .system)
    
    // Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupLayout()
        loadTrack(index: currentIndex)
    }
    
    // Setup
    private func setupLayout() {
        // Configure buttons
        prevButton.setImage(UIImage(systemName: "backward.fill"), for: .normal)
        playPauseButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        nextButton.setImage(UIImage(systemName: "forward.fill"), for: .normal)
        
        [prevButton, playPauseButton, nextButton].forEach {
            $0.tintColor = .label
            $0.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        }
        
        // Controls Stack (horizontal)
        let controlsStack = UIStackView(arrangedSubviews: [prevButton, playPauseButton, nextButton])
        controlsStack.axis = .horizontal
        controlsStack.alignment = .center
        controlsStack.distribution = .equalSpacing
        controlsStack.spacing = 40
        
        // Main Stack (vertical)
        let mainStack = UIStackView(arrangedSubviews: [coverImageView, titleLabel, controlsStack])
        mainStack.axis = .vertical
        mainStack.alignment = .center
        mainStack.spacing = 20
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(mainStack)
        
        NSLayoutConstraint.activate([
            mainStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            coverImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            coverImageView.heightAnchor.constraint(equalTo: coverImageView.widthAnchor)
        ])
    }
    
    // Actions
    @objc private func buttonTapped(_ sender: UIButton) {
        switch sender {
        case prevButton:
            previousTrack()
        case nextButton:
            nextTrack()
        case playPauseButton:
            togglePlayPause()
        default:
            break
        }
    }
    
    // Player Logic
    private func loadTrack(index: Int) {
        guard tracks.indices.contains(index) else { return }
        let track = tracks[index]
        titleLabel.text = track.title
        coverImageView.image = UIImage(named: track.coverName)
        
        if let url = Bundle.main.url(forResource: track.fileName.replacingOccurrences(of: ".mp3", with: ""), withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.prepareToPlay()
            } catch {
                print("Error loading \(track.fileName): \(error)")
            }
        }
        updatePlayPauseIcon(isPlaying: false)
        isPlaying = false
    }
    
    private func togglePlayPause() {
        guard let player = audioPlayer else { return }
        
        if isPlaying {
            player.pause()
        } else {
            player.play()
        }
        isPlaying.toggle()
        updatePlayPauseIcon(isPlaying: isPlaying)
    }
    
    private func nextTrack() {
        currentIndex = (currentIndex + 1) % tracks.count
        loadTrack(index: currentIndex)
        if isPlaying { audioPlayer?.play() }
    }
    
    private func previousTrack() {
        currentIndex = (currentIndex - 1 + tracks.count) % tracks.count
        loadTrack(index: currentIndex)
        if isPlaying { audioPlayer?.play() }
    }
    
    private func updatePlayPauseIcon(isPlaying: Bool) {
        let icon = isPlaying ? "pause.fill" : "play.fill"
        playPauseButton.setImage(UIImage(systemName: icon), for: .normal)
    }
}


