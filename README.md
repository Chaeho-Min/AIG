# AIG (Avocado Interface Guideline)
<img width="1213" alt="image" src="https://user-images.githubusercontent.com/75792767/167806479-8339ef22-2c31-4fe4-96c0-20b2a1a0a7a7.png">

AIG는 어플을 디자인 할 때 한 번씩은 던져봐야 하는 질문들을 제공합니다.   
이 질문들을 계속 던져보고 이 가이드라인에 맞게 디자인했을 때, 사용하기 편리한 어플이 될 것입니다.

</br>

# :iphone: Screenshots
<img width="1131" alt="image" src="https://user-images.githubusercontent.com/75792767/168067856-5bcb5808-bd0c-472e-a3e1-809775c24db5.png">
<img width="1131" alt="image" src="https://user-images.githubusercontent.com/75792767/168068085-a19323db-0611-42fb-9f10-fec18c73cfd4.png">

</br>

# :sparkles: Technical Achievement

## 1. 간결한 코드

```swift
// 메인 화면 (MainView.swift)
var body: some View {
        
        ZStack {
            
            Color.bgColor.ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                title
                Spacer()
                categoryButtons
                categoryGOButton
            }
            .padding()
        }
    }
```
```swift
// 가이드 화면 (Guide1View.swift)
var body: some View {
        
        ZStack {
            
            Color.bgColor.ignoresSafeArea()
            
            VStack(spacing: 0) {
                CustomNavigationBar(title: guide.guideTitle)
                
                ScrollView(showsIndicators: false) {
                    
                    VStack(spacing: 64) {
                        question
                        content1
                        content2
                    }
                    .padding(.vertical, 32)
                }
                .ignoresSafeArea(edges: .bottom)
                .padding(.horizontal)
            }
        }
    }
```
구조체의 body 내부르 최대한 간결하게 만드는 것을 목표로 했습니다.   
따라서 뷰를 웬만하면 변수나 구조체로 뺐습니다.

## 2. 오토레이아웃
<img width="1131" alt="image" src="https://user-images.githubusercontent.com/75792767/168074398-a69ab622-32aa-4ba6-94b6-6f7d93215ec2.png">
Spacer, frame, padding을 이용하여 모든 아이폰 화면에서 사용 가능하도록 만들었습니다.

## 3. 다크모드
<img width="1131" alt="image" src="https://user-images.githubusercontent.com/75792767/168076081-d402154d-8852-4761-91f5-55784496d168.png">
다크모드에서도 컨텐츠를 문제 없이 볼 수 있도록 했습니다.

<br></br>


# ⚒ Development Environment
| Environment | Version |
|:---:|:---:|
| Swift | 5.6 |
| Xcode | 13.3 |

</br>

# :books: Documentation
- [발표자료](https://github.com/Chaeho-Min/AIG/blob/main/발표자료.pdf)
