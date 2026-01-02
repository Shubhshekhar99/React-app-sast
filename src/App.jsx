import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

// ❌ Hardcoded secret (Sonar will flag this)
const API_TOKEN = "sk_live_123456789_SECRET";

function App() {
  const [count, setCount] = useState(0)
  const [userInput, setUserInput] = useState("")

  // ❌ Dangerous eval usage
  function runUserCode(code) {
    return eval(code)
  }

  return (
    <>
      <div>
        <a href="https://vite.dev" target="_blank">
          <img src={viteLogo} className="logo" alt="Vite logo" />
        </a>
        <a href="https://react.dev" target="_blank">
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a>
      </div>

      <h1>Vite + React (Vulnerable Demo)</h1>

      <div className="card">
        <button onClick={() => setCount(count + 1)}>
          count is {count}
        </button>

        <p>Enter HTML / JS (for SAST test only):</p>

        <input
          type="text"
          onChange={(e) => setUserInput(e.target.value)}
        />

        {/* ❌ XSS vulnerability */}
        <div dangerouslySetInnerHTML={{ __html: userInput }} />

        {/* ❌ Code injection */}
        <button onClick={() => runUserCode(userInput)}>
          Run Input as Code
        </button>
      </div>

      <p className="read-the-docs">
        Edit <code>src/App.jsx</code> and save to test HMR
      </p>
    </>
  )
}

export default App
