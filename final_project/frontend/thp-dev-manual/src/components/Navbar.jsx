function Navbar() {
  return (
    <header className="site-header">
      <nav className="navbar" aria-label="Navigation principale">
        <a className="navbar-brand" href="#accueil">
          THP Dev Manual
        </a>
        <div className="navbar-links">
          <a href="#accueil">Accueil</a>
          <a href="#chapitres">Chapitres</a>
          <a href="#methode">Methode</a>
          <a href="#a-propos">A propos</a>
        </div>
      </nav>
    </header>
  )
}

export default Navbar
