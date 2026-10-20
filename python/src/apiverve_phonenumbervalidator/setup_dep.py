from setuptools import setup, find_packages

setup(
    name='apiverve_phonenumbervalidator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
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
