# 🚄 Flutter Train App

기차 좌석 예매를 기반으로 제작한 Flutter 프로젝트입니다.<br>
출발역과 도착역을 선택하고, 좌석을 고른 뒤 예매를 완료하는 간단한 기능을 구현했습니다.

---

## 🧩 주요 기능

| 기능                  | 설명                                                                  |
| --------------------- | --------------------------------------------------------------------- |
| 🔽 역 선택 Dropdown   | 출발/도착역을 선택하여 조건 만족 시 다음 화면 이동                    |
| 🎟️ 좌석 선택 Grid     | 좌석을 눌러 좌석 선택                                                 |
| 🎯 조건부 버튼 활성화 | 출발역·도착역·좌석 선택 여부에 따라 버튼 활성화                       |
| 🧱 컴포넌트화된 구조  | `SeatBox`, `StationBox`, `BookNowButton` 등 위젯 분리로 재사용성 증가 |

---

## 🗂️ 폴더 구조

```dart
📁 lib/
├── 📑 main.dart   // 앱 시작점
├── 📑 theme.dart  // 전역 테마 설정
├── 📁 pages/
│   ├── 📁 home/
│   │   ├── 📑 home_page.dart
│   │   └── 📁 widgets/
│   │       ├── 📄 station_box.dart
│   │       └── 📄 seat_select_botton.dart
│   ├── 📁 station_list/
│   │   ├── 📑 station_list_page.dart
│   │   └── 📁 widgets/
│   │       └── 📄 station_list.dart
│   └── 📁 seat/
│       ├── 📑 seat_page.dart
│       └── 📁 widgets/
│           ├── 📄 selected_station.dart
│           ├── 📄 seat_select_ex.dart
│           ├── 📄 seat_box.dart
│           └── 📄 book_now_botton.dart
```

---

## ⚙️ 실행 방법

```dart
flutter pub get
```

---

## 🗺️ 앱 사용 흐름

### ✅ **홈 화면 (`HomePage`)**

✔️ 출발역과 도착역을 선택
<br>
✔️ 둘 다 선택을 완료하면 버튼 활성화

### ✅ **기차역 리스트 화면 (`StationListPage`)**

✔️ 기차역 리스트를 출력
<br>
✔️ 출발역 선택 완료 후 도착역 선택 시 동일한 역이름 미출력(반대 경우도 동일)<br>
&nbsp;&nbsp;&nbsp;&nbsp; *예시 ) 출발역 - 수서 선택 / 도착역 - 수서 출력 ❌*

### ✅ **좌석 선택 화면 (`SeatPage`)**

✔️ 선택된 역 정보가 상단에 표시
<br>
✔️ 좌석 UI에서 하나의 좌석 선택
<br>
✔️ 선택 시 하단의 `Book Now` 버튼이 활성화
<br>
✔️ 버튼 선택 시 선택한 정보 표시

---

## 🔮 앞으로 추가하면 좋은 기능

| 기능              | 설명                                                   |
| ----------------- | ------------------------------------------------------ |
| 🗓️ 날짜 선택 기능 | 날짜와 시간을 선택해 예매하기                          |
| 🔄 다중 좌석 선택 | 한 번에 여러 좌석 선택 지원                            |
| 🧾 예매 내역 저장 | SharedPreferences 또는 로컬 DB를 통한 간단한 저장 기능 |
| 🧑 사용자 로그인  | 예매 기록을 사용자 단위로 관리                         |

---

### 📌 프로젝트 목적

✔️ Flutter의 **기본 위젯 구조**, **상태 관리**, **화면 전환(Navigator)** 에 대한 이해
<br>
✔️ 사용자 중심의 UI/UX 설계 연습 (조건 기반 활성화, 좌석 선택 시각화 등)
<br>
✔️ 코드 구조화를 통해 **재사용성 높은 위젯 분리** 및 프로젝트 관리 능력 향상

---

🌸 Velog : [@dudals9696](https://velog.io/@dudals9696/posts) <br>
👩‍💻 GitHub : hayanmini(hayancode)
