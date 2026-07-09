function ChapterCard({ chapter }) {
  return (
    <article className="chapter-card">
      <div className="chapter-meta">
        <span>Module {chapter.module_number}</span>
        <span>{chapter.category}</span>
      </div>
      <h2>{chapter.title}</h2>
      <p className="chapter-summary">{chapter.summary}</p>
      <div className="chapter-content">
        <p>{chapter.content}</p>
      </div>
      <div className="chapter-example">
        <h3>Exemple concret</h3>
        <p>{chapter.example}</p>
      </div>
      <div className="chapter-tips">
        <h3>Conseils pratiques</h3>
        <p>{chapter.tips}</p>
      </div>
    </article>
  )
}

export default ChapterCard
