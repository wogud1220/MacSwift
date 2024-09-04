import AVFoundation

class C_TTS {
    
    
    /*
     // -----------------------------
     [요약 설명]
     // -----------------------------
     1. Text To Speech : 문자열을 음성으로 읽어주는 것 입니다
     // -----------------------------
     2. 필요 import 설정 :
     
     import AVFoundation
     // -----------------------------
     3. 사용 방법 :
     
     C_TTS.shared.play("안녕하세요")
     
     C_TTS.shared.stop()
     // -----------------------------
     4. 테스트 : 실제 디바이스 기기 연결 및 TTS 코드 호출 실시
     // -----------------------------
     */
    
    
    // [변수 선언 실시]
    let ACTIVITY_NAME = "C_TTS"
    
    
    // [전역 싱글톤 객체 선언 실시]
    static let shared = C_TTS()
    private let synthesizer = AVSpeechSynthesizer()
    
    
    // [TTS 시작]
    internal func play(_ string: String) {
        print("")
        print("====================================")
        print("[\(self.ACTIVITY_NAME) >> play() :: TTS 음성 재생 실시]")
        print("string :: \(string)")
        print("====================================")
        print("")
        
        let utterance = AVSpeechUtterance(string: string) // [음성 텍스트]
        utterance.voice = AVSpeechSynthesisVoice(language: "ko-KR") // [음성 언어 발음]
        utterance.rate = 0.4 // [음성 속도]
        synthesizer.stopSpeaking(at: .immediate) // [음성 실행 즉시 중지]
        synthesizer.speak(utterance) // [음성 실행]
    }
    
    
    // [TTS 종료]
    internal func stop() {
        print("")
        print("====================================")
        print("[\(self.ACTIVITY_NAME) >> stop() :: TTS 음성 재생 중지]")
        print("====================================")
        print("")
        
        // [음성 실행 즉시 중지]
        synthesizer.stopSpeaking(at: .immediate)
    }
    
    
} // [클래스 종료]
