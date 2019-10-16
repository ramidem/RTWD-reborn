// Get elements
const player = document.querySelector(".player");
const video = document.querySelector(".viewer");
const progress = document.querySelector(".progress");
const progressBar = document.querySelector(".progress__filled");
const toggle = document.querySelector(".toggle");
const skipButtons = document.querySelectorAll("[data-skip]");
const ranges = document.querySelectorAll(".player__slider");

// Build functions
function togglePlay() {
  video.paused ? video.play() : video.pause();
}

function updatePlayButton() {
  toggle.textContent = this.paused ? "▶" : "⏸";
}

function skip() {
  video.currentTime += parseFloat(this.dataset.skip);
}

function handleRangeUpdate() {
  // console.log(this.name, this.value);
  video[this.name] = this.value;
}

function handleProgress() {
  // const percent = ;
  progressBar.style.flexBasis = `${(video.currentTime / video.duration) *
    100}%`;
}

function scrub(e) {
  const scrubTime = (e.offsetX / progress.offsetWidth) * video.duration;
  video.currentTime = scrubTime;
}

//  Hook up the event listeners
video.addEventListener("click", togglePlay);
video.addEventListener("play", updatePlayButton);
video.addEventListener("pause", updatePlayButton);
video.addEventListener("timeupdate", handleProgress);

toggle.addEventListener("click", togglePlay);

skipButtons.forEach(button => button.addEventListener("click", skip));

ranges.forEach(range => range.addEventListener("change", handleRangeUpdate));
// ranges.forEach(range => range.addEventListener("mousemove", handleRangeUpdate));

let mousedown = false;

progressBar.addEventListener("click", scrub);
progressBar.addEventListener("mousemove", e => mousedown && scrub(e));
progressBar.addEventListener("mousedown", () => (mousedown = true));
progressBar.addEventListener("mouseup", () => (mousedown = false));
