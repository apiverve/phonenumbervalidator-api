from setuptools import setup, find_packages

import os
lib_folder = os.path.dirname(os.path.realpath(__file__))
requirements_file = os.path.join(lib_folder, 'requirements.txt')
install_requires = ["requests >= 2.25.1", "setuptools >= 56.0.0"]
if os.path.exists(requirements_file):
    with open(requirements_file, 'r') as f:
        install_requires = f.read().splitlines()

setup(
    name='apiverve_phonenumbervalidator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=install_requires,
    description='Phone Number Validator checks a phone number and country code to determine validity, line type, and country of origin. It flags disposable or VoIP numbers and outputs standardized international, national, RFC3966, and E.164 formats.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/phonenumbervalidator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)