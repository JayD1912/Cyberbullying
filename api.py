from flask import Flask,render_template,jsonify,request
import pickle



import nltk
nltk.download('punkt')
nltk.download('stopwords')
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
from nltk.stem.porter import PorterStemmer
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn.feature_extraction.text import CountVectorizer

import preprocessor as p


bow=pickle.load(open('bow_model.pkl','rb'))
model=pickle.load(open('model.pkl','rb'))
app=Flask(__name__)

@app.route('/api',methods=['GET'])
def hello():
  global str1
  def tab(text):
    

    def preprocess(text):
      text = p.clean(text)
      text = text.lower().replace('[^\w\s]',' ').replace('\s\s+', ' ')
      return text   

    text = preprocess(text)
    text = word_tokenize(text)

    stemmer = PorterStemmer()
    def stem_words(text):       
      return " ".join([stemmer.stem(word) for word in text])
    text = stem_words(text)



    text = bow.transform([text]).toarray()
    global str1
    a=model.predict(text)
    if a[0].item()==1:
      str1="Is a hate comment"
    else:
      str1="Is not a hate comment"
    
  
  lang = request.args.get('language')
  tab(lang)
  return jsonify({'Type of comment':str1})
  
  


  



 
  


  







if __name__ == '__main__':
    app.run(debug=True)





