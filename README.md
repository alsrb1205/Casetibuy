# Team Project - **Casetibuy**

> **Casetify**를 벤치마킹하여 구현한 쇼핑몰 팀 프로젝트입니다.  
> **React + Node.js + MySQL** 기반의 **풀스택 SPA 쇼핑몰**을 구현하며, 클라이언트-서버-DB 간의 유기적인 연결을 중점으로 개발했습니다.

🔗 [배포 링크 바로가기](http://casetibuy-project.s3-website.ap-northeast-2.amazonaws.com/)

---

## 📎 목차 바로가기

- [🏁 프로젝트 목표](#-프로젝트-목표)
- [👥 팀원 구성](#-팀원-구성)
- [⚙️ 개발 환경 및 스택](#️-개발-환경-및-스택)
- [📌 주요 기능 요약](#-주요-기능-요약)
- [🔍 다이어그램 / 폴더 구조도 / ERD](#-다이어그램--폴더-구조도--erd)
- [💻 화면 구성](#-화면-구성)

---

## 🏁 **프로젝트 목표**

1. GitHub 기반 **협업 개발 프로세스 경험**
2. **React SPA 구조**를 활용한 빠르고 유연한 반응형 UI 구현
3. **CRUD 및 이벤트 처리**를 통한 비즈니스 로직 학습
4. **MySQL**을 활용한 데이터베이스 설계 및 연동
5. 클라이언트 ↔ 서버 ↔ DB 간의 **전체 연동 흐름** 이해

---

## 👥 **팀원 구성**

| 이름   | 담당 기능                                   |
| ------ | ------------------------------------------- |
| 정민규 | 상세페이지 / 상품리스트 / 검색 / 리뷰       |
| 강현우 | 로그인 / 회원가입 / 마이페이지 / 결제페이지 |
| 윤지혜 | 홈 / 장바구니                               |

---

## ⚙️ **개발 환경 및 스택**

### 🎨 Frontend

<p>
  <img src="https://img.shields.io/badge/React-61DAFB?style=flat&logo=React&logoColor=white"/>
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=JavaScript&logoColor=black"/>
  <img src="https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=HTML5&logoColor=white"/>
  <img src="https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=CSS3&logoColor=white"/>
  <img src="https://img.shields.io/badge/Tailwind%20CSS-white?logo=tailwindcss"/>
</p>

---

### 🛠️ Backend

<p>
  <img src="https://img.shields.io/badge/Node.js-339933?style=flat&logo=Node.js&logoColor=white"/>
  <img src="https://img.shields.io/badge/Express-000000?style=flat&logo=Express&logoColor=white"/>
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=MySQL&logoColor=white"/>
  <img src="https://img.shields.io/badge/MySQLWorkbench-00758F?style=flat&logo=mysql&logoColor=white"/>
</p>

---

### 🤝 Collaboration

<p>
  <img src="https://img.shields.io/badge/Git-F05032?style=flat&logo=Git&logoColor=white"/>
  <img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=GitHub&logoColor=white"/>
  <img src="https://img.shields.io/badge/Notion-000000?style=flat&logo=Notion&logoColor=white"/>
  <img src="https://img.shields.io/badge/VSCode-007ACC?style=flat&logo=VisualStudioCode&logoColor=white"/>
</p>

---

### 🧩 Libraries & Tools

<p>
  <img src="https://img.shields.io/badge/Axios-5A29E4?style=flat&logo=axios&logoColor=white"/>
  <img src="https://img.shields.io/badge/Swiper-6332F6?style=flat&logo=swiper&logoColor=white"/>
  <img src="https://img.shields.io/badge/JsonWebToken-000000?style=flat&logo=jsonwebtokens&logoColor=white"/>
  <img src="https://img.shields.io/badge/Multer-4A4A4A?style=flat"/>
  <img src="https://img.shields.io/badge/DaumPostcode-FFCD00?style=flat"/>
  <img src="https://img.shields.io/badge/Kakaopay-FFCD00?style=flat"/>
</p>

---

## 📌 **주요 기능 요약**

### 🔐 **회원 관련**

- **로그인/로그아웃** (JWT 토큰 + 세션 관리)
- **회원가입** (유효성 체크)
- **마이페이지** (프로필 관리, 회원 설정, 탈퇴)

### 🛍️ **쇼핑몰 기능**

- **메인 페이지**: 슬라이드 배너, 상품 리스트 출력 (DB 연동)
- **카테고리 페이지**: 페이지네이션
- **상품 상세**: 케이스/색상 별 이미지/정보 필터링, 별점/리뷰 CRUD
- **장바구니**: 개별/전체 선택, 총가격 계산
- **결제 페이지**: 우편번호 검색, 유효성 검사, KakaoPay API
- **검색 페이지**: 키워드 기반 상품 필터링

---

## 🔍 **다이어그램 / 폴더 구조도 / ERD**

### 🖼 **다이어그램**

![diagram](https://github.com/user-attachments/assets/f09ad0c1-70bc-4f4c-b75e-a278db135c92)

### 🗂️ **폴더 구조도**

```csharp
casetibuy_project/
├── client/
│   ├── src/                     # 소스 코드 디렉토리
│   │   ├── pages/              # 페이지 컴포넌트들
│   │   ├── hooks/              # 커스텀 React 훅
│   │   ├── context/            # React Context 관련 파일들
│   │   ├── component/          # 재사용 가능한 컴포넌트들
│   │   ├── style/              # 스타일 관련 파일들
│   │   ├── App.js              # 메인 애플리케이션 컴포넌트
│   │   ├── index.js            # 애플리케이션 진입점
│   │   ├── App.css             # App 컴포넌트 스타일
│   │   ├── index.css           # 전역 스타일
│   │   └── ...
│   ├── public/                 # 정적 파일 디렉토리
│   ├── package.json            # 프로젝트 의존성 및 스크립트 정의
│   ├── package-lock.json       # 의존성 버전 고정
│   ├── tailwind.config.js      # Tailwind CSS 설정
│   └── postcss.config.js       # PostCSS 설정
│
└── server/                     # 백엔드 Node.js 서버
    ├── controller/             # 비즈니스 로직 처리
    │   ├── productController.js    # 상품 관련 로직
    │   ├── paymentController.js    # 결제 관련 로직
    │   ├── memberController.js     # 회원 관련 로직
    │   ├── cartController.js       # 장바구니 관련 로직
    │   ├── uploadController.js     # 파일 업로드 관련 로직
    │   ├── reviewController.js     # 리뷰 관련 로직
    │   └── orderController.js      # 주문 관련 로직
    ├── router/                 # API 라우팅
    │   ├── reviewRouter.js         # 리뷰 API 엔드포인트
    │   ├── uploadRouter.js         # 파일 업로드 API 엔드포인트
    │   ├── paymentRouter.js        # 결제 API 엔드포인트
    │   ├── productRouter.js        # 상품 API 엔드포인트
    │   ├── memberRouter.js         # 회원 API 엔드포인트
    │   ├── orderRouter.js          # 주문 API 엔드포인트
    │   └── cartRouter.js           # 장바구니 API 엔드포인트
    ├── repository/             # 데이터베이스 접근 계층
    ├── upload_files/           # 업로드된 파일 저장 디렉토리
    ├── server.js               # 서버 진입점 및 설정
    ├── package.json            # 서버 의존성 및 스크립트 정의
    └── package-lock.json       # 서버 의존성 버전 고정
```

### 💾 **ERD**

![db_diagram](https://github.com/user-attachments/assets/8052ade5-20f9-47d6-9e09-f60f13917539)

---

## 💻 **화면 구성**

### 1️⃣ 로그인 / 회원가입

![로그인 / 회원가입](https://github.com/user-attachments/assets/466db940-9611-4929-8f12-abb5f75569cd)

### 2️⃣ 마이페이지 / 회원설정 / 회원탈퇴

![mypage](https://github.com/user-attachments/assets/37f00b05-547d-43c6-8701-70a1db1fee35)

### 3️⃣ 메인페이지

![home](https://github.com/user-attachments/assets/bc6f7c78-2fd3-4d4d-8533-33257a175092)

### 4️⃣ 카테고리별 상품 페이지

![productList](https://github.com/user-attachments/assets/bc0d6458-8daf-4483-b1d8-73fa796c4ab4)

### 5️⃣ 장바구니

![cart](https://github.com/user-attachments/assets/0e410202-5948-499a-bbcf-12eef8a3d496)

### 6️⃣ 결제페이지

![order](https://github.com/user-attachments/assets/53417751-3085-4b11-8b7e-c90f9c78ad81)

### 7️⃣ 상품 상세페이지

![detailProduct](https://github.com/user-attachments/assets/b16f8586-eea4-4549-be07-2c1175d30d5a)
![detailProduct2](https://github.com/user-attachments/assets/12c8a829-cbb9-4561-b736-5156927d8034)

### 8️⃣ 검색 페이지

![search](https://github.com/user-attachments/assets/6f6e7f69-f1d6-45b8-a242-d2d222a53061)

---
