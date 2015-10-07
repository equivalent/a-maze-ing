shared_examples 'maze_magic to_html div' do
  it do
    expect(subject.to_html).to have_selector("div.maze-magic")
  end

  it do
    expect(subject.to_html).to have_content('')
  end
end
