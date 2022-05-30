from setuptools import setup, find_packages


install_requires = ["requests~=2.25.1", "spacy~=2.2.4"]

setup(
    name="Mbaza",
    version="1.0",
    description="Mbaza AI Chatbot",
    author="Digital Umuganda",
    author_email="info@digitalumuganda.com",
    maintainer="Peter Damian Cyuzuzo",
    maintainer_email="zudanga@gmail.com",
    url="https://github.com/MBAZA-NLP/mbaza-covid-chatbot-kinyarwanda.git",  # to be updated when in open source
    packages=find_packages("mbaza-covid-chatbot-kinyarwanda"),
    classifiers=[
        "Development Status :: 1 - Alpha",
        "Intended Audience :: Developers",
        # supported python versions
        "Programming Language :: Python",
        "Programming Language :: Python :: 3.7",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
    ],
    install_requires=install_requires,
)
