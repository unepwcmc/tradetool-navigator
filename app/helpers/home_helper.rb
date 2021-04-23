module HomeHelper
  COLOR_PRIMARY = '#AFB90F'

  def filterableTableOptions
    {
      download: {
        bgColor: COLOR_PRIMARY
      },
      filters: {
        buttonApply: {
          borderColor: COLOR_PRIMARY,
          borderWidth: '1px',
          colorBg: '#AFB90F',
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
          tickFill: '#AFB90F'
        },
        trigger: {
          colorBg: '#F8F8F8',
          colorBgActive: '#2F4F5D',
          colorBgHover: '#2F4F5D',
          colorBgSelected: '#2F4F5D',
        }
      },
      headings: {
        bgColor: '#2F4F5D',
        borderColor: '#2F4F5D'
      },
      modal: {
        closeBgColor: '#AFB90F',
        closeBorderRadius: '2px',
        crossFill: '#fff',
        wrapperColor: 'rgba(255,255,255,.8)'
      },
      pagination: {
        buttonBorderRadius: '2px',
        buttonBgColor: '#AFB90F',
        textTitle: 'Showing',
        textItems: 'entries'
      },
      rows: {
        bgColor1: '#F7FAFB',
        bgColor2: '#FEFFFF',
        borderColor: 'transparent'
      }
    }.to_json
  end
end
