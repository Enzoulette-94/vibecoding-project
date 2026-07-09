import Navbar from './components/Navbar'
import Hero from './components/Hero'
import ChaptersList from './components/ChaptersList'
import Footer from './components/Footer'
import './App.css'

function App() {
  return (
    <>
      <Navbar />
      <main>
        <Hero />
        <section className="method-section" id="methode">
          <div className="section-heading">
            <p className="eyebrow">Methode MVP</p>
            <h2>Une progression simple pour ne pas se perdre</h2>
          </div>
          <div className="method-grid">
            <article className="method-item">
              <span>01</span>
              <h3>Comprendre</h3>
              <p>Clarifier le besoin, le public cible et les limites du projet.</p>
            </article>
            <article className="method-item">
              <span>02</span>
              <h3>Construire</h3>
              <p>Coder une version courte, lisible et verifiable.</p>
            </article>
            <article className="method-item">
              <span>03</span>
              <h3>Tester</h3>
              <p>Verifier chaque fonctionnalite avant d'ajouter autre chose.</p>
            </article>
            <article className="method-item">
              <span>04</span>
              <h3>Presenter</h3>
              <p>Expliquer le probleme, la solution, la demo et les limites.</p>
            </article>
          </div>
        </section>
        <ChaptersList />
      </main>
      <Footer />
    </>
  )
}

export default App
