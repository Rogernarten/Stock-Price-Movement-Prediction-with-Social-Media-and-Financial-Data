# Stock Price Movement Prediction with Text & Numerical Data

## 📌 Overview
This project explores the integration of **structured financial data** and **unstructured text data** (e.g., social media/news sentiment) to predict **short-term and mid-term stock price movements**.  
The approach combines **feature engineering** from numerical data with **sentiment features** extracted via a pre-trained BERT model.  
We evaluate multiple machine learning models (RandomForest, XGBoost, MLP) and implement **ensemble learning** for improved performance.

---

## 📂 Dataset
Due to size limitations, the **full dataset** is hosted externally.  

- 🔗 [Download Full Dataset (Google Drive)](https://drive.google.com/file/d/1B5Y3XuMVKXvOhEBBFQngeNFp-a7I01Yh/view?usp=drive_link)  
- A small **sample dataset** (`data/sample_data.csv`) is included in the repository for quick testing.  

### Automatic Download
You can also fetch the full dataset automatically with the provided script:

```bash
bash scripts/download_data.sh
```

This will:
- Create a `data/` folder  
- Download the full dataset from Google Drive  
- Unzip it (if applicable)  

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
