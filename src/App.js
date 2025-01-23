import logo from './logo.svg';
import Button from 'react-bootstrap/Button';
import './App.css';
import { useState } from 'react';

function App() {
  const [variant, setVariant] = useState('success');
  function onClickChangeColor() {
    if (variant === 'success') {
      setVariant('danger');
    } else {
      setVariant('success');
    }
  }
  return (
    <div className='App'>
      <header className='App-header'>
        <img src={logo} className='App-logo' alt='logo' />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className='App-link'
          href='https://reactjs.org'
          target='_blank'
          rel='noopener noreferrer'
        >
          Learn React
        </a>
        <Button
          data-testid='change-color-button'
          variant={variant}
          onClick={onClickChangeColor}
        >
          Success
        </Button>
      </header>
    </div>
  );
}

export default App;
