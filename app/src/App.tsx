import React from 'react';
import './scss/App.scss';
import cobra from './components/assets/img/cobra.png';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={cobra} alt="logo" />
      </header>
    </div>
  );
}

export default App;
