from setuptools import setup, find_packages

setup(
    name='apiverve_phonenumbervalidator',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Phone Number Validator checks a phone number and returns whether it is valid, its line type, country, area and time zone, and the carrier its mobile range was allocated to. It flags disposable and VoIP numbers and outputs E.164, international, national and RFC3966 formats.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/phonenumbervalidator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
