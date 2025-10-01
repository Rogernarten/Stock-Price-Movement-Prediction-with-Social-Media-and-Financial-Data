# Stock Price Movement Prediction with Text & Numerical Data

## 📌 Overview
This project explores the integration of **structured financial data** and **unstructured text data** (e.g., social media/news sentiment) to predict **short-term and mid-term stock price movements**.  
The approach combines **feature engineering** from numerical data with **sentiment features** extracted via a pre-trained BERT model.  
We evaluate multiple machine learning models (RandomForest, XGBoost, MLP) and implement **ensemble learning** for improved performance.

---

## 📂 Dataset
Each record corresponds to:
- **Daily stock data** (open, close, high, low, etc.)
- **Concatenated related text data** for the same day

### Key Features
- **Return**: `(Close - Open) / Open`  
- **Volatility**: `(High - Low) / Open`  
- **Text Length**: Number of tokens after concatenation  
- **Engagement Score**: Weighted sum of likes, retweets, comments  
- **BERT-based Sentiment Score**: Extracted via pretrained sentiment classification model  

### Labels
- **label_t+1**: Whether the stock closes higher the next day  
- **label_t+7**: Whether the stock closes higher 7 days later  

---

## ⚙️ Methodology
1. **Feature Engineering**
   - Normalization of numerical features
   - Extraction of text sentiment scores
   - Merging structured + unstructured features  

2. **Baseline Models**
   - Random Forest  
   - XGBoost  
   - Multi-Layer Perceptron (MLP)  

3. **Hyperparameter Tuning**
   - Grid Search  
   - 3-Fold Cross Validation  

4. **Ensemble Learning**
   - Stacking the best models for improved generalization  

---

## 📊 Results
- **Best Single Model (t+1 prediction)**: ~83.6% accuracy  
- **Ensemble Model**: ~65% accuracy (not significantly better than baseline)  
- **Simulated Trading**: Demonstrated ability to achieve **both short-term and long-term profitability**  

---

## 🚀 Usage
### Prerequisites
- Python 3.9+
- Install dependencies:
```bash
pip install -r requirements.txt
```

### Run Jupyter Notebook
```bash
jupyter notebook findata_v2-Eng.ipynb
```

### Reproduce Experiments
- Data preprocessing  
- Feature engineering  
- Model training & evaluation  
- Trading simulation  

---

## 📈 Future Improvements
- Experiment with **transformer-based financial embeddings**  
- Explore **alternative ensemble strategies** (e.g., boosting + neural nets hybrid)  
- Incorporate **macro-economic indicators** and **longer historical context**  

---

## 📜 License
This project is released under the MIT License.  
