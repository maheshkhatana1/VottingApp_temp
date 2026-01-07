import React, { useEffect, useState } from "react";

const options = ["cpp", "python", "node", "java"];

function App() {
  const [votes, setVotes] = useState({});

  const fetchVotes = async () => {
    const res = await fetch("/api/votes");
    const data = await res.json();
    setVotes(data);
  };

  const vote = async (lang) => {
    await fetch(`/api/vote/${lang}`, { method: "POST" });
    fetchVotes();
  };

  useEffect(() => {
    fetchVotes();
  }, []);

  return (
    <div style={{ padding: "20px", fontFamily: "Arial" }}>
      <h1>Vote Your Favourite Language</h1>

      {options.map((lang) => (
        <div key={lang} style={{ marginBottom: "10px" }}>
          <button onClick={() => vote(lang)}>
            Vote {lang}
          </button>
          <span style={{ marginLeft: "10px" }}>
            Votes: {votes[lang] || 0}
          </span>
        </div>
      ))}
    </div>
  );
}

export default App;
