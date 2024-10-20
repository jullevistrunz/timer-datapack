function updatePreviews() {
  const styleForColors = document.createElement('style')
  styleForColors.id = 'styleForColors'
  styleForColors.innerHTML = `.mainColor { color: ${
    document.querySelector('#mainColorInp').value
  }; } .accentColor { color: ${
    document.querySelector('#accentColorInp').value
  }; }`
  document.querySelector('#styleForColors').replaceWith(styleForColors)

  document.querySelectorAll('.inputBox .preview').forEach((preview) => {
    if (preview.parentElement.classList.contains('timerStopped')) {
      preview.style.fontStyle = 'italic'
    }
    const inputEl = preview.parentElement.querySelector('input')
    const time = []
    document
      .querySelectorAll('.inputContainer input[type="number"]')
      .forEach((input) => {
        let value = !isNaN(parseInt(input.value)) ? parseInt(input.value) : 0
        time.push(
          value < 10 && input.getAttribute('placeholder') != 'Days'
            ? `0${value}`
            : `${value}`
        )
      })

    let text = inputEl.value

    const timeMap = {
      d: time[0],
      h: time[1],
      m: time[2],
      s: time[3],
    }

    text = text.replace(/\{([dhms])\}/g, (match, group) => {
      return `<span class="accentColor">${timeMap[group]}</span>`
    })

    text = text.replace(
      '{stoppedText}',
      document.querySelector('#stoppedText').value
    )

    preview.innerHTML = text

    for (const childNode of preview.childNodes) {
      if (childNode.nodeType == 3) {
        const newSpan = document.createElement('span')
        newSpan.classList.add('mainColor')
        newSpan.innerHTML = childNode.nodeValue
        childNode.replaceWith(newSpan)
      }
    }
  })
}

function exportDesign() {
  const designName =
    document
      .querySelector('#designNameInp')
      .value.replace(/\s/g, '')
      .toLowerCase() || 'custom-design'

  const textArr = []
  for (const inpEl of document.querySelectorAll('.inputBox input')) {
    let text = inpEl.value
    const timerStopped = inpEl.parentElement.classList.contains('timerStopped')
    const daysEnabled = inpEl.parentElement.classList.contains('daysEnabled')

    timeMap = {
      d: `{"score":{"name":"#timer","objective":"timer_days"},"color":"$(accentColor)"${
        timerStopped ? ',"italic":$(stoppedItalic)' : ''
      }}`,
      h: `{"score":{"name":"#timer","objective":"timer_hours2"},"color":"$(accentColor)"},{"score":{"name":"#timer","objective":"timer_hours1"},"color":"$(accentColor)"${
        timerStopped ? ',"italic":$(stoppedItalic)' : ''
      }}`,
      m: `{"score":{"name":"#timer","objective":"timer_minutes2"},"color":"$(accentColor)"},{"score":{"name":"#timer","objective":"timer_minutes1"},"color":"$(accentColor)"${
        timerStopped ? ',"italic":$(stoppedItalic)' : ''
      }}`,
      s: `{"score":{"name":"#timer","objective":"timer_seconds2"},"color":"$(accentColor)"},{"score":{"name":"#timer","objective":"timer_seconds1"},"color":"$(accentColor)"${
        timerStopped ? ',"italic":$(stoppedItalic)' : ''
      }}`,
    }

    text = text.replace(/\{([dhms])\}/g, (match, group) => {
      return `<div>${timeMap[group]}</div>`
    })

    text = text.replace('{stoppedText}', '$(stoppedText)')

    const tempDiv = document.createElement('div')
    tempDiv.innerHTML = text

    for (const childNode of tempDiv.childNodes) {
      if (childNode.nodeType == 3) {
        const newDiv = document.createElement('div')
        newDiv.innerHTML = `{"text":"${
          childNode.nodeValue
        }","color":"$(mainColor)"${
          timerStopped ? ',"italic":$(stoppedItalic)' : ''
        }}`
        childNode.replaceWith(newDiv)
      }
    }

    let tempArr = []
    for (const div of tempDiv.querySelectorAll('div')) {
      tempArr.push(div.innerHTML)
    }

    textArr.push(
      `$execute if score #timer timer_stop matches ${
        timerStopped ? 1 : 0
      } if score #timer timer_enableDays matches ${
        daysEnabled ? 1 : 0
      } run title @a actionbar [${tempArr.join(',')}]`
    )
  }

  download(designName + '.mcfunction', textArr.join('\n'))
}

// https://stackoverflow.com/a/18197341/15255405
function download(filename, text) {
  const element = document.createElement('a')
  element.setAttribute(
    'href',
    'data:text/plain;charset=utf-8,' + encodeURIComponent(text)
  )
  element.setAttribute('download', filename)

  element.style.display = 'none'
  document.body.appendChild(element)

  element.click()

  document.body.removeChild(element)
}

document.querySelectorAll('input[type="color"]').forEach((input) => {
  input.addEventListener('change', function () {
    if (this.name == 'mainColor') {
      document.querySelector(
        '#setMainColorOutput'
      ).value = `/data modify storage timer:settings display.mainColor set value "${this.value}"`
    } else if (this.name == 'accentColor') {
      document.querySelector(
        '#setAccentColorOutput'
      ).value = `/data modify storage timer:settings display.accentColor set value "${this.value}"`
    }
  })
})

document.querySelector('#designNameInp').addEventListener('input', function () {
  document.querySelector(
    '#enabledDesignOutput'
  ).value = `/data modify storage timer:settings display.design set value "${
    this.value ? this.value : 'custom-design'
  }"`
})

document.querySelector('#stoppedText').addEventListener('input', function () {
  document.querySelector(
    '#setStoppedTextOutput'
  ).value = `/data modify storage timer:settings display.stoppedText set value "${this.value}"`
})
