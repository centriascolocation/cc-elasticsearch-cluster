node 'cc-esc-01' {
  include elasticsearch
  }

node 'cc-esc-02' {
  include elasticsearch
  }

node 'cc-esc-03' {
  include elasticsearch
  }

node 'cc-esc-ctrl' {
  include kibana4
  }
#contain ::elasticsearch
#contain ::kibana4
