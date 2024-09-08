import streamlit as st
import requests
import json

st.title('Test ATUT-DevOps')

st.text_input('Name', 'Type your name here')

if st.button('Submit'):
    response = requests.get(f'http://api:5000/welcome/{name_input}')
    if response.status_code == 200:
        message = response.json().get('message', 'No message received')
        st.success(message)
    else:
        st.error('Failed to retrieve the welcome message')