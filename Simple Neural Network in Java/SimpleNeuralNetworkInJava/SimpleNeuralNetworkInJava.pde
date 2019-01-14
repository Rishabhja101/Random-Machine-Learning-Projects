Neuron neuron;

void setup() {
  size(2000, 1000, P2D);
  
  // sample inputs
  float[][] inputs = new float [][] {
    {0, 0, 0},
    {0, 0, 1},
    {0, 1, 0},
    {0, 1, 1},
    {1, 0, 0},
    {1, 0, 1},
    {1, 1, 0},
    {1, 1, 1}
  };
  
  // sample outputs
  float[][] outputs = new float [][] {
    {0},
    {0},
    {0},
    {0},
    {1},
    {1},
    {1},
    {1}
  };
  
  
  // set number of intputs
  int numInputs = 3;
  
  // set number of outputs
  int numOutputs = 1;
  
  neuron = new Neuron(numInputs, numOutputs);
  neuron.train(inputs, outputs, 1000);
  
}


void draw() {
  translate(width / 2, height / 2);
  background(0); 
  textSize(64);
  fill(255, 255, 255);
  
  float[][] inputs1 = new float [][] {
    {1, 0, 0}
  };
  
  float[][] inputs2 = new float [][] {
    {0, 1, 0}
  };
  
  float[][] inputs3 = new float [][] {
    {0, 0, 1}
  };
  
  text(neuron.think(inputs1)[0][0], 0, -400);
  text(neuron.think(inputs2)[0][0], 0, -300);
  text(neuron.think(inputs3)[0][0], 0, -200);
} //<>//
