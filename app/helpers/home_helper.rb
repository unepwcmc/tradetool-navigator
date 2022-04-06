module HomeHelper
  LIME = '#AFB90F'
  TEAL = '#2F4F5D'

  def filterableTableOptions
    { 
      fontFamily: 'Raleway, sans-serif',
      columns: {
        widths: [
          '1fr', 
          '2fr', 
          # '1fr',
          '1fr',
          '1fr', 
          '80px'
        ], # Length = attributes.length + 1
      },
      download: {
        bgColor: LIME,
        bgColorHover: TEAL,
        text: 'Download'
      },
      filters: {
        buttonApply: {
          borderColor: LIME,
          borderWidth: '1px',
          colorBg: LIME,
          colorText: '#fff',
          textTransform: 'uppercase'
        },
        buttonCancel: {
          borderColor: '#707070',
          borderWidth: '1px',
          textTransform: 'uppercase'
        },
        buttonClear: {
          borderColor: '#707070',
          borderWidth: '1px',
          textTransform: 'uppercase'
        },
        filterOptions: {
          tickFill: TEAL,
          handleLongLabels:'truncate'
        },
        trigger: {
          colorBg: '#F8F8F8',
          colorBgActive: TEAL,
          colorBgHover: TEAL,
          colorBgSelected: TEAL,
        }
      },
      headings: {
        bgColor: TEAL,
        borderColor: TEAL
      },
      modal: {
        title: 'Initiative',
        closeBgColor: LIME,
        closeBorderRadius: '2px',
        crossFill: '#F7FAFB',
        wrapperColor: 'rgba(255,255,255,.8)'
      },
      legend: {
        buttonTitle: 'Legend',
        buttonClass: 'legend-icon'
      },
      pagination: {
        buttonBorderRadius: '2px',
        buttonBgColor: LIME,
        textTitle: 'Showing',
        textItems: 'entries'
      },
      rows: {
        bgColor1: '#F7FAFB',
        bgColor2: '#FEFFFF',
        bgColorMobile: '#F7FAFB',
        borderColor: 'transparent',
        buttonHoverColor: TEAL,
      }
    }.to_json
  end
end
