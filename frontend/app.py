import streamlit as st
import requests
import json
st.set_page_config(page_title='ATUT-DevOps', 
                   page_icon=':rocket:')

st.title('Test ATUT-DevOps First Deployment')

if st.button('Submit'):
    response = requests.get(f'http://api:8000/welcome/{name_input}')
    if response.status_code == 200:
        message = response.json().get('message', 'No message received')
        st.success(message)
    else:
        st.error('Failed to retrieve the welcome message')