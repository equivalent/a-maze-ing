shared_examples 'maze_magic to_html div' do
  it do
    expect(subject.to_html).to have_selector("div.maze-magic")
  end

  it do
    expect(subject.to_html).to have_content('')
  end
end

shared_examples 'decoratable representation object' do
  it "should be decorateable with #{described_class}" do
    expect(maze_rep_object.decorate).to be_instance_of(described_class)
  end
end
