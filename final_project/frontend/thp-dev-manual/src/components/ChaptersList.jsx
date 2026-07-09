import { useEffect, useState } from 'react'
import ChapterCard from './ChapterCard'

function ChaptersList() {
  const [chapters, setChapters] = useState([])
  const [isLoading, setIsLoading] = useState(true)
  const [error, setError] = useState(null)

  useEffect(() => {
    async function loadChapters() {
      try {
        const response = await fetch('http://localhost:3000/api/chapters')

        if (!response.ok) {
          throw new Error("L'API Rails ne repond pas correctement.")
        }

        const data = await response.json()
        setChapters(data)
      } catch (fetchError) {
        setError(fetchError.message)
      } finally {
        setIsLoading(false)
      }
    }

    loadChapters()
  }, [])

  return (
    <section className="chapters-section" id="chapitres">
      <div className="section-heading">
        <p className="eyebrow">Les 9 modules</p>
        <h2>Chapitres du manuel</h2>
      </div>

      {isLoading && (
        <p className="status-message">Chargement des chapitres...</p>
      )}

      {error && (
        <p className="status-message error-message">
          Impossible de charger les chapitres : {error}
        </p>
      )}

      {!isLoading && !error && (
        <div className="chapters-list">
          {chapters.map((chapter) => (
            <ChapterCard key={chapter.id} chapter={chapter} />
          ))}
        </div>
      )}
    </section>
  )
}

export default ChaptersList
