# Define parent image
FROM qiskit/qiskit:0.23.5

# Create directories, set working directory
RUN mkdir /quantum-demo
WORKDIR /quantum-demo
ADD req.txt /quantum-demo/


RUN python -m pip install -r /quantum-demo/req.txt

# Execute final tasks and copy relevant files

ADD circuit.py /quantum-demo/
# RUN chmod +x /quantum-anomaly/circuit.py

# Define entry-point
CMD [ "python3", "/quantum-demo/circuit.py" ]