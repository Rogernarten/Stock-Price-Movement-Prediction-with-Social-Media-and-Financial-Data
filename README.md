# 📈 Stock Price Movement Prediction with Social Media and Financial Data

Predicting short-term stock price movements by integrating structured financial indicators with unstructured social media text.  
This project combines Random Forest and LightGBM models with TF-IDF and BERT embeddings to capture both market signals and investor sentiment.

---

## 📊 Dataset and Preprocessing
- **Structured Data**  
  - Daily return (`return_1d`)  
  - 3-day mean return (`return_3d_mean`)  
  - 3-day volatility (`volatility_3d`)  
  - 3-day momentum (`momentum_3d`)  

- **Unstructured Data**  
  - Tweets mentioning target stocks (likes, retweets, comments, text)  

- **Preprocessing**  
  - Merged into a unified dataframe: `processed_model_data_with_price.csv`  
  - Labels: stock movement at **t+1** and **t+7** (binary: up = 1, down = 0)  

---

## 🏗️ Baseline Models
- **Random Forest A**: Social media features only (likes, retweets, comments).  
- **Random Forest B**: Technical indicators only (returns, volatility, momentum).  
- **Random Forest C**: Combination of social + technical features.  

These baselines validate the effectiveness of structured signals in prediction.

---

## 🚀 Main Models

### 1. TF-IDF + Numerical Features + LightGBM
- Vectorized tweet text with **TF-IDF** (1000 dimensions).  
- Concatenated with normalized financial indicators.  
- Designed a weighted influence function
-  Helps capture asymmetric information flow and improve predictive performance.

### 2. BERT Embeddings + Numerical Features + LightGBM
- Encoded tweet text with **pre-trained sentence-transformers BERT** (768 dimensions).  
- Combined semantic embeddings with structured financial features.  
- Provides deeper understanding of investor sentiment beyond word frequency.  

---

## 📌 Results & Insights
- Baseline Random Forest models confirm predictive value of both social and financial features.  
- TF-IDF and BERT text embeddings improve model accuracy and robustness.  
- Weighted tweet interactions highlight the disproportionate influence of viral tweets.  

---

## 🔮 Future Work
- Incorporate **multimodal transformers** for joint modeling.  
- Extend beyond binary classification to **return regression** and **anomaly detection**.  
- Use more diverse data sources (Reddit, news, financial podcasts).  
- Evaluate robustness under **extreme market events** (e.g., black swans).  

---

## ⚙️ Installation & Usage

Clone the repository:
```bash
git clone https://github.com/yourname/stock-prediction-social.git
cd stock-prediction-social
